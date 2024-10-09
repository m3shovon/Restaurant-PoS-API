# # App_Auth/views.py
from rest_framework import viewsets, status
from rest_framework.response import Response
from rest_framework.decorators import action
from rest_framework.permissions import IsAuthenticated, IsAuthenticatedOrReadOnly
from .models import User,UserProfile, BusinessInfo, BranchInfo, OwnerInfo, UserSession
from .serializers import SignupSerializer, AuthSerializer, ProfileSerializer, UserProfileSerializer, UserSerializer, OwnerInfoSerializer, BranchInfoSerializer,BusinessInfoSerializer,PasswordForgotSerializer, PasswordUpdateSerializer,BranchInfoWithSQISerializer
from django.contrib.auth import authenticate, login, logout
from rest_framework.authtoken.models import Token
from django.views.decorators.csrf import csrf_exempt
from django.utils.decorators import method_decorator
from django.core.mail import send_mail
from django.template.loader import render_to_string
from django.utils.crypto import get_random_string
from django.core.mail import EmailMultiAlternatives
from rest_framework.pagination import PageNumberPagination
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import SearchFilter, OrderingFilter
import django_filters
from django.db.models import Q
from django.contrib.sessions.models import Session
from django.utils import timezone

class StandardResultsSetPagination(PageNumberPagination):
    page_size = 10
    page_size_query_param = 'page_size'
    max_page_size = 1000

# ########################### Profile #############################
class ProfileViewSetFilter(django_filters.FilterSet):
    keyword = django_filters.CharFilter(method='filter_by_keyword')

    class Meta:
        model = User
        fields = ['email', 'is_active']

    def filter_by_keyword(self, queryset, name, value):
        return queryset.filter(
            Q(email__icontains=value)
        )

@method_decorator(csrf_exempt, name='dispatch')
class ProfileViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all().order_by('-id')
    serializer_class = ProfileSerializer
    filter_class = ProfileViewSetFilter
    filter_backends = [DjangoFilterBackend]
    filterset_fields = ('id', 'email',)
    pagination_class = StandardResultsSetPagination
    
    # Sign UP
    @action(detail=False, methods=['post'], serializer_class=SignupSerializer)
    def signup(self, request):
        serializer = SignupSerializer(data=request.data)
        if serializer.is_valid():
            raw_password = serializer.validated_data.get('password')
            user = serializer.save()
            user.set_password(raw_password)
            user.save()
            return Response({'user': ProfileSerializer(user).data}, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    # Signin
    @action(detail=False, methods=['post'], serializer_class=AuthSerializer)
    def signin(self, request):
        serializer = AuthSerializer(data=request.data)
        if serializer.is_valid():
            email = serializer.validated_data['email']
            password = serializer.validated_data['password']
            business_name = serializer.validated_data['business_name']
            
            user = authenticate(email=email, password=password)
            
            if user is not None:
                # Check if the user is linked to a BusinessInfo with the provided business_name
                if not BusinessInfo.objects.filter(business_name=business_name, company_profiles__user=user).exists():
                    return Response({'error': 'Business name does not match.'}, status=status.HTTP_400_BAD_REQUEST)

                # Proceed with session validation as in your original code
                user_profile = UserProfile.objects.get(user=user)
                login(request, user)

                token, _ = Token.objects.get_or_create(user=user)

                if user.is_admin:
                    data = {
                        'token': token.key,
                        'user_id': user.id,
                        'is_active': user.is_active,
                        'is_admin_user': user_profile.is_admin_user,
                        'is_normal_user': user_profile.is_normal_user,
                        'email': user.email,
                    }
                else:
                    profile_serializer = UserProfileSerializer(user_profile)
                    data = {
                        'token': token.key,
                        'user_id': user.id,
                        'is_active': user.is_active,
                        'is_admin_user': user_profile.is_admin_user,
                        'is_normal_user': user_profile.is_normal_user,
                        'email': user.email,
                        'business_info': user_profile.company_info.id,
                        'owner_info': user_profile.owner_info.id,
                        'branch_info': profile_serializer.data["branches"],
                        'user_profile': profile_serializer.data,
                    }
                return Response(data, status=status.HTTP_200_OK)
            return Response({'error': 'Invalid Credentials'}, status=status.HTTP_400_BAD_REQUEST)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    # Sign Out
    @action(detail=False, methods=['post'], permission_classes=[IsAuthenticated])
    def signout(self, request):
        return Response({'message': 'Successfully signed out.'}, status=status.HTTP_200_OK)
    
    # Forgot Password
    @action(detail=False, methods=['post'], url_path='forgot-password', serializer_class=PasswordForgotSerializer)
    def forgot_password(self, request):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        email = serializer.validated_data['email']

        user = User.objects.get(email=email)
        new_password = get_random_string(length=8)  
        user.set_password(new_password)
        user.save()

        return Response({'message': 'A new password has been sent to your email.'}, status=status.HTTP_200_OK)

    # update Password
    @action(detail=False, methods=['post'], url_path='update-password', serializer_class=PasswordUpdateSerializer, permission_classes=[IsAuthenticated])
    def update_password(self, request):
        serializer = self.get_serializer(data=request.data, context={'request': request})
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({'message': 'Password has been updated successfully.'}, status=status.HTTP_200_OK)

    def list(self, request, *args, **kwargs):
        queryset = self.get_queryset()
        serializer = ProfileSerializer(queryset, many=True)
        return Response(serializer.data)

    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()
        serializer = self.get_serializer(instance)
        return Response(serializer.data)

# View Data of User
class SingleUserProfileViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAuthenticated]
    serializer_class = ProfileSerializer

    def get_queryset(self):
        return User.objects.filter(id=self.request.user.id)

    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()
        serializer = self.get_serializer(instance)
        return Response(serializer.data)

# ############# All User View #################### 
class AllUserProfileViewSet(viewsets.ReadOnlyModelViewSet):
    permission_classes = [IsAuthenticated]
    serializer_class = ProfileSerializer
    queryset = User.objects.all().order_by('-id')
    filter_backends = [DjangoFilterBackend]
    pagination_class = StandardResultsSetPagination
    filter_backends = [SearchFilter]
    search_fields = [ 'email']
    ordering = ['email'] 
    def get_queryset(self):
        queryset = User.objects.all()     
        email = self.request.query_params.get('email', None)
        if email is not None:
            queryset = queryset.filter(email=email)
        return queryset
    
# User
class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all().order_by('-id')
    serializer_class = UserSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        return User.objects.filter(id=self.request.user.id)
     
    def update(self, request, *args, **kwargs):
        partial = kwargs.pop('partial', False)
        instance = self.get_object()
        serializer = self.get_serializer(instance, data=request.data, partial=partial)
        serializer.is_valid(raise_exception=True)
        self.perform_update(serializer)
        return Response(serializer.data)

    def perform_update(self, serializer):
        serializer.save()

# ############### BusinessDetails ######################
class BusinessInfoViewSetFilter(django_filters.FilterSet):
    class Meta:
        model = BusinessInfo
        fields = ['business_name', 'phone_number' ]
    
class BusinessInfoViewSet(viewsets.ModelViewSet):
    queryset = BusinessInfo.objects.all().order_by('-id')
    serializer_class = BusinessInfoSerializer
    filter_class = BusinessInfoViewSetFilter
    filter_backends = [DjangoFilterBackend]
    filterset_fields = ['id',  'business_name', 'phone_number']
    search_fields = ['id','business_name', 'phone_number']
    permission_classes = [IsAuthenticated]
    pagination_class = StandardResultsSetPagination

# ############### BranchInfo ######################
class BranchInfoFilter(django_filters.FilterSet):
    keyword = django_filters.CharFilter(method='filter_by_keyword')

    class Meta:
        model = BranchInfo
        fields = ['id','business_info','business_info__business_name','business_info__id', 'branch_name', 'representative_name','slug']

    def filter_by_keyword(self, queryset, name, value):
        return queryset.filter(
            Q(business_info__business_name__icontains=value) |
            Q(branch_name__icontains=value) |
            Q(address__icontains=value)
        )
    
class BranchInfoViewSet(viewsets.ModelViewSet):
    queryset = BranchInfo.objects.all().order_by('-id')
    serializer_class = BranchInfoSerializer
    permission_classes = [IsAuthenticatedOrReadOnly]
    # filter_backends = [DjangoFilterBackend, SearchFilter]
    filter_backends = [DjangoFilterBackend]
    filterset_class = BranchInfoFilter
    pagination_class = StandardResultsSetPagination

class BranchInfoWithSQIViewSet(viewsets.ModelViewSet):
    queryset = BranchInfo.objects.all().order_by('-id')
    serializer_class = BranchInfoWithSQISerializer
    permission_classes = [IsAuthenticatedOrReadOnly]
    filter_backends = [DjangoFilterBackend]
    filterset_class = BranchInfoFilter
    pagination_class = StandardResultsSetPagination

# ############### OwnerInfo ######################
class OwnerInfoFilter(django_filters.FilterSet):
    keyword = django_filters.CharFilter(method='filter_by_keyword')

    class Meta:
        model = OwnerInfo
        fields = [ 'owner_name', 'title']

    def filter_by_keyword(self, queryset, name, value):
        return queryset.filter(
            # Q(user__email__icontains=value) |
            Q(owner_name__icontains=value) |
            Q(title__icontains=value)
        )
    
class OwnerInfoViewSet(viewsets.ModelViewSet):
    queryset = OwnerInfo.objects.all().order_by('-id')
    serializer_class = OwnerInfoSerializer
    permission_classes = [IsAuthenticated]
    filter_backends = [DjangoFilterBackend, SearchFilter]
    filterset_class = OwnerInfoFilter
    search_fields = ['owner_name', 'title']
    pagination_class = StandardResultsSetPagination

# ############### UserProfile ######################
class UserProfileFilter(django_filters.FilterSet):
    keyword = django_filters.CharFilter(method='filter_by_keyword')

    class Meta:
        model = UserProfile
        fields = ['user__email', 'subscription', 'is_active']

    def filter_by_keyword(self, queryset, name, value):
        return queryset.filter(
            Q(user__email__icontains=value) |
            Q(subscription__icontains=value)
        )

class UserProfileViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = UserProfile.objects.all().order_by('-id')
    serializer_class = UserProfileSerializer
    filter_backends = [DjangoFilterBackend, SearchFilter]
    filterset_class = UserProfileFilter
    search_fields = ['user__email', 'subscription', 'is_active']
    pagination_class = StandardResultsSetPagination

    def get_queryset(self):
        if self.request.user.is_admin:
            return UserProfile.objects.all()
        return UserProfile.objects.filter(user=self.request.user)
