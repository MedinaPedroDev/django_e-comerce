# Generated by Django 3.2.16 on 2022-12-24 21:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0007_alter_productos_categoria'),
        ('login', '0004_carritoproducts'),
    ]

    operations = [
        migrations.AddField(
            model_name='carrito',
            name='productos',
            field=models.ManyToManyField(through='login.CarritoProducts', to='home.Productos'),
        ),
    ]
