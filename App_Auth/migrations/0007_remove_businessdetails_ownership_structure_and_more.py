# Generated by Django 4.0 on 2024-08-12 10:37

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('App_Sqi', '0004_rename_vendortype_ownershipstructure_and_more'),
        ('App_Auth', '0006_user_groups_user_is_superuser_user_user_permissions'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='businessdetails',
            name='ownership_structure',
        ),
        migrations.AddField(
            model_name='businessdetails',
            name='ownershipstructure',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='App_Sqi.ownershipstructure'),
        ),
    ]
