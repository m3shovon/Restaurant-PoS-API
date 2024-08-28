# # App_Auth/views.py
from rest_framework import viewsets, status
from rest_framework.response import Response
from rest_framework.decorators import action
from rest_framework.permissions import IsAuthenticated, IsAuthenticatedOrReadOnly
from .models import User,UserProfile, BusinessInfo, BusinessDetails, BranchInfo, OwnerInfo
from .serializers import SignupSerializer, AuthSerializer, ProfileSerializer, UserProfileSerializer, UserSerializer, OwnerInfoSerializer, BranchInfoSerializer, BusinessDetailsSerializer,BusinessInfoSerializer
from django.contrib.auth import authenticate, login, logout
from rest_framework.authtoken.models import Token
from django.views.decorators.csrf import csrf_exempt
from django.utils.decorators import method_decorator

@method_decorator(csrf_exempt, name='dispatch')
class ProfileViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = ProfileSerializer

    @action(detail=False, methods=['post'], serializer_class=SignupSerializer)
    def signup(self, request):
        serializer = SignupSerializer(data=request.data)
        if serializer.is_valid():
            user = serializer.save()
            return Response({'user': ProfileSerializer(user).data}, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    @action(detail=False, methods=['post'], serializer_class=AuthSerializer)
    def signin(self, request):
        serializer = AuthSerializer(data=request.data)
        if serializer.is_valid():
            user = authenticate(email=serializer.validated_data['email'], password=serializer.validated_data['password'])
            if user is not None:
                login(request, user)
                token, _ = Token.objects.get_or_create(user=user)
                return Response({'token': token.key}, status=status.HTTP_200_OK)
            return Response({'error': 'Invalid Credentials'}, status=status.HTTP_400_BAD_REQUEST)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    @action(detail=False, methods=['post'], permission_classes=[IsAuthenticated])
    def signout(self, request):
        logout(request)
        return Response(status=status.HTTP_200_OK)

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

class AllUserProfileViewSet(viewsets.ReadOnlyModelViewSet):
    permission_classes = [IsAuthenticated]
    serializer_class = ProfileSerializer
    queryset = User.objects.all()

# User
class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
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


class BusinessInfoViewSet(viewsets.ModelViewSet):
    queryset = BusinessInfo.objects.all()
    serializer_class = BusinessInfoSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        return BusinessInfo.objects.filter(user=self.request.user)

class BusinessDetailsViewSet(viewsets.ModelViewSet):
    queryset = BusinessDetails.objects.all()
    serializer_class = BusinessDetailsSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        return BusinessDetails.objects.filter(business_info__user=self.request.user)

# BranchInfo
class BranchInfoViewSet(viewsets.ModelViewSet):
    queryset = BranchInfo.objects.all()
    serializer_class = BranchInfoSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        return BranchInfo.objects.filter(business_info__user=self.request.user)

# OwnerInfo
class OwnerInfoViewSet(viewsets.ModelViewSet):
    queryset = OwnerInfo.objects.all()
    serializer_class = OwnerInfoSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        return OwnerInfo.objects.filter(user=self.request.user)    

class UserProfileViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = UserProfile.objects.all()
    serializer_class = UserProfileSerializer

    def get_queryset(self):
        return UserProfile.objects.filter(user=self.request.user)


