# Generated by Django 4.0 on 2024-08-24 04:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('App_Auth', '0013_alter_user_is_active'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='is_active',
            field=models.BooleanField(default=False),
        ),
    ]
