from django.db import models
from django.contrib.auth.models import User
from home.models import Productos

# Create your models here.

class Perfil(models.Model):
    usuario=models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)
    nombre=models.CharField(max_length=100)
    fecha_nacimiento=models.DateField()
    fecha_creacion=models.DateField(auto_now_add=True)
    def __str__(self):
        return self.usuario

class Carrito(models.Model):
    usuario=models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)
    cantidad_Productos=models.IntegerField(default=0)  
    productos=models.ManyToManyField(Productos, through='CarritoProducts')  
    def __str__(self):
        return self.usuario

class CarritoProducts(models.Model):
    carrito=models.ForeignKey(Carrito, on_delete=models.CASCADE )
    producto=models.ForeignKey(Productos, on_delete=models.CASCADE)
    cantidad=models.IntegerField(default=1)
    fecha=models.DateTimeField(null=True, blank=True)