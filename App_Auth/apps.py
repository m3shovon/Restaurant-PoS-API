from django.apps import AppConfig


class AppAuthConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'App_Auth'

    def ready(self):
        import App_Auth.signals