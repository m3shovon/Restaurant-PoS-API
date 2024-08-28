from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import User, BusinessInfo, BusinessDetails, BranchInfo, OwnerInfo, UserProfile

@receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        UserProfile.objects.create(user=instance)

@receiver(post_save, sender=BusinessInfo)
def update_business_info(sender, instance, created, **kwargs):
    if created:
        user_profile = UserProfile.objects.get(user=instance.user)
        user_profile.company_info = instance
        user_profile.save()

@receiver(post_save, sender=BusinessDetails)
def update_business_details(sender, instance, created, **kwargs):
    user_profile = UserProfile.objects.get(user=instance.business_info.user)
    user_profile.company_details = instance
    user_profile.save()

@receiver(post_save, sender=BranchInfo)
def update_branch_info(sender, instance, created, **kwargs):
    user_profile = UserProfile.objects.get(user=instance.business_info.user)
    user_profile.branches.add(instance)
    user_profile.save()

@receiver(post_save, sender=OwnerInfo)
def update_owner_info(sender, instance, created, **kwargs):
    if created:
        user_profile = UserProfile.objects.get(user=instance.user)
        user_profile.owner_info = instance
        user_profile.save()
