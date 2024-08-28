from django.contrib.auth.models import AbstractBaseUser, BaseUserManager
from django.db import models
from django.contrib.auth.models import PermissionsMixin
from django.db.models.signals import post_save
from django.dispatch import receiver

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

class OwnershipStructure(models.Model):
    name = models.CharField(max_length=255)
    code = models.CharField(max_length=255, blank=True, null=True)
    order = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True, blank=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, blank=True, null=True)

    class Meta:
        db_table = 'ownershipstructure'

    def __str__(self):
        return f'{self.id} - {self.name}'

class IndustryCategory(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    icon = models.CharField(max_length=255, blank=True, null=True)
    slug = models.CharField(max_length=255, blank=True, null=True)
    order = models.IntegerField(blank=True, null=True)
    status = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True, blank=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, blank=True, null=True)
    created_by = models.IntegerField(blank=True, null=True)
    updated_by = models.IntegerField(blank=True, null=True)

    class Meta:
        db_table = 'categories'
    
    def __str__(self):
        return f'{self.id} - {self.name}'
    
class BusinessInfo(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='business_info', blank=True, null=True)
    business_name = models.CharField(max_length=255, blank=True, null=True)
    business_address = models.TextField(blank=True, null=True)
    mailing_address = models.TextField(blank=True, null=True)
    phone_number = models.CharField(max_length=20, blank=True, null=True)
    logo_picture = models.ImageField(upload_to='logos/', blank=True, null=True)

class BusinessDetails(models.Model):
    business_info = models.OneToOneField(BusinessInfo, on_delete=models.CASCADE, related_name='business_details', blank=True, null=True)
    industry_category = models.ForeignKey(IndustryCategory, on_delete=models.CASCADE, related_name='industry_category', blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    year_in_operation = models.PositiveIntegerField(blank=True, null=True)
    ownershipstructure = models.ForeignKey(OwnershipStructure, on_delete=models.CASCADE, blank=True, null=True)
    trade_license_no = models.CharField(max_length=255, blank=True, null=True)

class BranchInfo(models.Model):
    business_info = models.ForeignKey(BusinessInfo, on_delete=models.CASCADE, related_name='branches', blank=True, null=True)
    branch_name = models.CharField(max_length=255, blank=True, null=True)
    address = models.TextField(blank=True, null=True)
    representative_name = models.CharField(max_length=255, blank=True, null=True)
    contact_number = models.CharField(max_length=20, blank=True, null=True)
    email = models.EmailField(blank=True, null=True)
    
    def __str__(self):
        return self.branch_name

class OwnerInfo(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='owner_info', blank=True, null=True)
    owner_name = models.CharField(max_length=255, blank=True, null=True)
    title = models.CharField(max_length=255, blank=True, null=True)
    contact_number = models.CharField(max_length=20, blank=True, null=True)
    owner_photo = models.ImageField(upload_to='owners/', blank=True, null=True)

    def __str__(self):
        return f'{self.owner_name} - {self.title}'
    


class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='user_profile')
    owner_info = models.ForeignKey(OwnerInfo, on_delete=models.CASCADE, null=True, blank=True, related_name='owner_profiles')
    company_info = models.ForeignKey(BusinessInfo, on_delete=models.CASCADE, null=True, blank=True, related_name='company_profiles')
    company_details = models.ForeignKey(BusinessDetails, on_delete=models.CASCADE, null=True, blank=True, related_name='details_profiles')
    branches = models.ManyToManyField(BranchInfo, blank=True, related_name='branch_profiles')
    sub_start_date = models.DateField(null=True, blank=True)
    sub_expire_date = models.DateField(null=True, blank=True)
    subscription = models.CharField(max_length=255, blank=True, null=True)
    is_active = models.BooleanField(default=True)
    ceo_approval = models.BooleanField(default=False)
    is_admin_user = models.BooleanField(default=False)
    is_normal_user = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.user.email
    
    