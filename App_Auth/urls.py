from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import ProfileViewSet, SingleUserProfileViewSet, AllUserProfileViewSet, UserProfileViewSet,UserViewSet,BusinessInfoViewSet,BusinessDetailsViewSet,BranchInfoViewSet,OwnerInfoViewSet

router = DefaultRouter()
router.register(r'profiles', ProfileViewSet, basename='profile')
router.register(r'single-profile', SingleUserProfileViewSet, basename='singleprofile')
router.register(r'all-profile', AllUserProfileViewSet, basename='allprofile')
router.register(r'user-profiles', UserProfileViewSet, basename='userprofile')
router.register(r'user', UserViewSet, basename='user')
router.register(r'business-info', BusinessInfoViewSet, basename='businessinfo')
router.register(r'business-details', BusinessDetailsViewSet, basename='businessdetails')
router.register(r'branch-info', BranchInfoViewSet, basename='branchinfo')
router.register(r'owner-info', OwnerInfoViewSet, basename='ownerinfo')


urlpatterns = [
    path('', include(router.urls)),
      path('auth/', include('rest_framework.urls')),
]