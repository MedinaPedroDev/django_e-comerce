# Generated by Django 3.2.16 on 2022-12-19 22:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('login', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='perfil',
            name='img',
            field=models.ImageField(blank=True, null=True, upload_to='login/img'),
        ),
    ]
