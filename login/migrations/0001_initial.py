# Generated by Django 3.2.16 on 2022-12-18 18:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='Carrito',
            fields=[
                ('usuario', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='auth.user')),
                ('cantidad_Productos', models.IntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='Perfil',
            fields=[
                ('usuario', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='auth.user')),
                ('nombre', models.CharField(max_length=100)),
                ('fecha_nacimiento', models.DateField()),
                ('fecha_creacion', models.DateField(auto_now_add=True)),
                ('img', models.ImageField(blank=True, null=True, upload_to='imgs/perfiles')),
            ],
        ),
    ]
