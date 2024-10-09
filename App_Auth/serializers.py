from rest_framework import serializers
from .models import User, BusinessInfo, BranchInfo, OwnerInfo, UserProfile, UserSession, Category
from django.core.mail import send_mail
# from django.conf import settings
# from CORE.settings import EMAIL_HOST_USER, DEFAULT_FROM_EMAIL

from django.contrib.auth import get_user_model
from rest_framework import serializers
# from App_Sqi.serializers import SubscriptionSerializer

from django.db.models import Avg, Max, Min, Sum
from rest_framework.exceptions import ValidationError


User = get_user_model()


class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = '__all__'

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['email', 'password']
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = User(
            email=validated_data['email']
        )
        user.set_password(validated_data['password'])
        user.save()
        return user
    
    def update(self, instance, validated_data):
        instance.email = validated_data.get('email', instance.email)
        password = validated_data.get('password', None)
        if password:
            instance.set_password(password) 
        instance.save()

        return instance

class AuthSerializer(serializers.Serializer):
    business_name = serializers.CharField()
    email = serializers.EmailField()
    password = serializers.CharField(write_only=True)

    def validate(self, data):
        email = data.get('email')
        business_name = data.get('business_name')

        try:
            user = User.objects.get(email=email)
            if not BusinessInfo.objects.filter(business_name=business_name, company_profiles__user=user).exists():
                raise ValidationError("No business matches the provided email and business name.")
        except User.DoesNotExist:
            raise ValidationError("Invalid email or business name.")
        
        return data
    
class BusinessInfoSerializer(serializers.ModelSerializer):
    industry_category = serializers.PrimaryKeyRelatedField(queryset=Category.objects.all(), required=False)
    
    class Meta:
        model = BusinessInfo
        fields = '__all__'
    
    def to_representation(self, instance):
        response = super().to_representation(instance)
        if instance.industry_category:
            response['industry_category_name'] = instance.industry_category.name

        
        response['branch_count'] = BranchInfo.objects.filter(business_info=instance.id).count()

        return response

class BranchInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = BranchInfo
        fields = '__all__'
    
    def to_representation(self, instance):
        response = super().to_representation(instance)
        
        if instance.business_info:
            response['industry_category'] = instance.business_info.industry_category.id
            response['company_name'] = instance.business_info.business_name
            if instance.business_info.logo_picture:
                response['logo'] = instance.business_info.logo_picture
            else:
                response['logo'] = None
        return response

class BranchInfoWithSQISerializer(serializers.ModelSerializer):
    class Meta:
        model = BranchInfo
        fields = '__all__'
    
    def to_representation(self, instance):
        response = super().to_representation(instance)
        response["score"] = round(instance.score,2)
        if instance.business_info:
            response['industry_category'] = instance.business_info.industry_category.id
            response['company_name'] = instance.business_info.business_name
        return response

class OwnerInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = OwnerInfo
        fields = '__all__'

class SignupSerializer(serializers.Serializer):
    email = serializers.EmailField()
    password = serializers.CharField(write_only=True)
    business_info = BusinessInfoSerializer()
    # business_details = BusinessDetailsSerializer()
    branches = BranchInfoSerializer(many=True)
    owner_info = OwnerInfoSerializer()

    # Check Email Exist
    def validate_email(self, value):
        if User.objects.filter(email=value).exists():
            raise ValidationError("A user with this email already exists.")
        return value

    def create(self, validated_data):
        business_info_data = validated_data.pop('business_info')
        branches_data = validated_data.pop('branches')
        owner_info_data = validated_data.pop('owner_info')

        user = User.objects.create_user(
            email=validated_data['email'],
            password=validated_data['password']
        )

        business_info = BusinessInfo.objects.create(**business_info_data)

        for branch_data in branches_data:
            BranchInfo.objects.create(business_info=business_info, **branch_data)

        owner_info = OwnerInfo.objects.create(business_info=business_info, **owner_info_data)

        user_profile = UserProfile.objects.get(user=user)
        user_profile.owner_info = owner_info
        user_profile.company_info = business_info
        user_profile.branches.set(BranchInfo.objects.filter(business_info=business_info))
        user_profile.save()

        return user

class ProfileSerializer(serializers.ModelSerializer):
    branches = BranchInfoSerializer(source='business_info.branches', many=True, read_only=True)
    owner_info = OwnerInfoSerializer(read_only=True)

    class Meta:
        model = User
        fields = "__all__"
    
    def to_representation(self, instance):
        response = super().to_representation(instance)
        return response

class UserProfileSerializer(serializers.ModelSerializer):
    user = UserSerializer()  
    owner_info = OwnerInfoSerializer() 
    company_info = BusinessInfoSerializer() 
    branches = BranchInfoSerializer(many=True) 
    class Meta:
        model = UserProfile
        fields = '__all__'


class PasswordForgotSerializer(serializers.Serializer):
    email = serializers.EmailField()

    def validate_email(self, value):
        try:
            user = User.objects.get(email=value)
        except User.DoesNotExist:
            raise serializers.ValidationError('No user is associated with this email.')
        return value

class PasswordUpdateSerializer(serializers.Serializer):
    old_password = serializers.CharField(write_only=True)
    new_password = serializers.CharField(write_only=True)
    confirm_password = serializers.CharField(write_only=True)

    def validate(self, data):
        if data['new_password'] != data['confirm_password']:
            raise serializers.ValidationError("Passwords do not match.")
        return data

    def validate_old_password(self, value):
        user = self.context['request'].user
        if not user.check_password(value):
            raise serializers.ValidationError("Old password is not correct.")
        return value

    def save(self):
        user = self.context['request'].user
        user.set_password(self.validated_data['new_password'])
        user.save()
        return user
    
class UserSessionSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserSession
        fields = "__all__"