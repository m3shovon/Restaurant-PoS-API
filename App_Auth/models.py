from django.contrib.auth.models import AbstractBaseUser, BaseUserManager
from django.db import models
from django.contrib.auth.models import PermissionsMixin
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.utils import timezone
from django.contrib.sessions.models import Session
from django.contrib.auth.hashers import make_password
import uuid
from django.db.models import Avg, Max, Min, Sum

class UserManager(BaseUserManager):
    def create_user(self, email, password=None):
        if not email:
            raise ValueError('Users must have an email address')
        user = self.model(email=self.normalize_email(email))
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, password=None):
        user = self.create_user(email, password)
        user.is_admin = True
        user.save(using=self._db)
        return user

class User(AbstractBaseUser, PermissionsMixin):
    email = models.EmailField(max_length=255, unique=True)
    name = models.CharField(max_length=255,blank=True, null=True)
    password = models.CharField(max_length=128)
    is_active = models.BooleanField(default=False)
    is_admin = models.BooleanField(default=False)

    objects = UserManager()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []

    def __str__(self):
        return self.email

    def has_perm(self, perm, obj=None):
        return True

    def has_module_perms(self, app_label):
        return True

    @property
    def is_staff(self):
        return self.is_admin

class Category(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    icon = models.CharField(max_length=255, blank=True, null=True)
    slug = models.CharField(max_length=255, blank=True, null=True)

class BusinessInfo(models.Model):
    industry_category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='category', blank=True, null=True)
    business_name = models.CharField(max_length=255, blank=True, null=True)
    business_address = models.TextField(blank=True, null=True)
    phone_number = models.CharField(max_length=20, blank=True, null=True)
    logo_picture = models.ImageField(upload_to='logos/', blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    year_in_operation = models.PositiveIntegerField(blank=True, null=True)
    # created_at = models.DateTimeField(auto_now_add=True,blank=True, null=True, editable=True)
    # modified_at = models.DateTimeField(auto_now=True,blank=True, null=True, editable=True)
    
    def __str__(self):
        return self.business_name or "Unnamed Business"

class BranchInfo(models.Model):
    business_info = models.ForeignKey(BusinessInfo, on_delete=models.CASCADE, related_name='branches', blank=True, null=True)
    branch_name = models.CharField(max_length=255, blank=True, null=True)
    slug = models.CharField(max_length=255, blank=True, null=True)
    address = models.TextField(blank=True, null=True)
    representative_name = models.CharField(max_length=255, blank=True, null=True)
    contact_number = models.CharField(max_length=20, blank=True, null=True)
    email = models.EmailField(blank=True, null=True)
    is_active = models.BooleanField(default=True)
    
    def __str__(self):
        return self.branch_name or "Unnamed Branch"

class OwnerInfo(models.Model):
    business_info = models.ForeignKey(BusinessInfo, on_delete=models.CASCADE, related_name='owner_info', blank=True, null=True)
    owner_name = models.CharField(max_length=255, blank=True, null=True)
    title = models.CharField(max_length=255, blank=True, null=True)
    contact_number = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return self.owner_name or "Unnamed Owner"
    
# need change
class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='user_profile')
    owner_info = models.ForeignKey(OwnerInfo, on_delete=models.CASCADE, null=True, blank=True, related_name='owner_profiles')
    company_info = models.ForeignKey(BusinessInfo, on_delete=models.CASCADE, null=True, blank=True, related_name='company_profiles')
    branches = models.ManyToManyField(BranchInfo, blank=True, related_name='branch_profiles')
    sub_start_date = models.DateField(null=True, blank=True)
    sub_expire_date = models.DateField(null=True, blank=True)
    subscription = models.CharField(max_length=255, default="Silver")
    is_active = models.BooleanField(default=True)
    ceo_approval = models.BooleanField(default=False)
    is_admin_user = models.BooleanField(default=False)
    is_normal_user = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)
    max_sessions = models.PositiveIntegerField(default=1)

    def __str__(self):
        return str(self.user.email)

class UserSession(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True,)
    session_key = models.CharField(max_length=40, unique=True)
    ip_address = models.GenericIPAddressField()
    created_at = models.DateTimeField(default=timezone.now)
    token = models.CharField(max_length=255, blank=True, null=True)

    def __str__(self):
        return f"{self.user.email} - {self.session_key} - {self.ip_address}"

    
    