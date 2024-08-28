from rest_framework import serializers
from .models import User, BusinessInfo, BusinessDetails, BranchInfo, OwnerInfo, UserProfile

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
    email = serializers.EmailField()
    password = serializers.CharField(write_only=True)

class BusinessInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = BusinessInfo
        fields = '__all__'

class BusinessDetailsSerializer(serializers.ModelSerializer):
    class Meta:
        model = BusinessDetails
        fields = '__all__'

class BranchInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = BranchInfo
        fields = '__all__'

class OwnerInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = OwnerInfo
        fields = '__all__'

class SignupSerializer(serializers.Serializer):
    email = serializers.EmailField()
    password = serializers.CharField(write_only=True)
    business_info = BusinessInfoSerializer()
    business_details = BusinessDetailsSerializer()
    branches = BranchInfoSerializer(many=True)
    owner_info = OwnerInfoSerializer()

    def create(self, validated_data):
        # Extract the related data
        business_info_data = validated_data.pop('business_info')
        business_details_data = validated_data.pop('business_details')
        branches_data = validated_data.pop('branches')
        owner_info_data = validated_data.pop('owner_info')

        user = User.objects.create_user(
            email=validated_data['email'],
            password=validated_data['password']
        )

        business_info = BusinessInfo.objects.create(user=user, **business_info_data)
        business_details = BusinessDetails.objects.create(business_info=business_info, **business_details_data)

        for branch_data in branches_data:
            BranchInfo.objects.create(business_info=business_info, **branch_data)

        owner_info = OwnerInfo.objects.create(user=user, **owner_info_data)

        user_profile = UserProfile.objects.get(user=user)
        user_profile.owner_info = owner_info
        user_profile.company_info = business_info
        user_profile.company_details = business_details
        user_profile.branches.set(BranchInfo.objects.filter(business_info=business_info))
        user_profile.save()

        return user

class ProfileSerializer(serializers.ModelSerializer):
    business_info = BusinessInfoSerializer()
    business_details = BusinessDetailsSerializer(source='business_info.business_details', read_only=True)
    branches = BranchInfoSerializer(source='business_info.branches', many=True, read_only=True)
    owner_info = OwnerInfoSerializer(read_only=True)

    class Meta:
        model = User
        fields = "__all__"

class UserProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserProfile
        fields = '__all__'
