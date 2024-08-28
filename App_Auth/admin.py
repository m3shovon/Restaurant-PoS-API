from django.contrib import admin
from App_Auth.models import User, BusinessInfo, BusinessDetails, BranchInfo, OwnerInfo, UserProfile, OwnershipStructure, IndustryCategory
# Register your models here.

class BusinessInfoAdmin(admin.ModelAdmin):
    list_display = ['id','user','business_name','mailing_address','phone_number',]
    
    # search_fields = ( 'invoice_number','order_number','pk')

class BusinessDetailsAdmin(admin.ModelAdmin):
    list_display = ['id','business_info',]
    
    # search_fields = ( 'invoice_number','order_number','pk')

class BranchInfoAdmin(admin.ModelAdmin):
    list_display = ['id','business_info','branch_name','representative_name','contact_number', 'email']
    
    # search_fields = ( 'invoice_number','order_number','pk')

class OwnerInfoAdmin(admin.ModelAdmin):
    list_display = ['id','user','owner_name','title','contact_number',]
    
    # search_fields = ( 'invoice_number','order_number','pk')

class UserProfileAdmin(admin.ModelAdmin):
    list_display = ['id','user','owner_info', 'created_at',]
    
    # search_fields = ( 'invoice_number','order_number','pk')

admin.site.register(User)
admin.site.register(OwnershipStructure)
admin.site.register(IndustryCategory)
admin.site.register(UserProfile,UserProfileAdmin)
admin.site.register(BusinessInfo,BusinessInfoAdmin)
admin.site.register(BusinessDetails,BusinessDetailsAdmin)
admin.site.register(BranchInfo,BranchInfoAdmin)
admin.site.register(OwnerInfo,OwnerInfoAdmin)
