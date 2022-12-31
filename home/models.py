from django.db import models

# Create your models here.
class Categorias(models.Model):
    nombre=models.CharField(max_length=100)
    def __str__(self):
        return self.nombre


class Productos(models.Model):
    nombre=models.CharField(max_length=100)
    description=models.CharField(max_length=300, null=True, blank=True)
    precio=models.DecimalField(max_digits=15,decimal_places=2)
    principal=models.BooleanField(default=False)
    oferta=models.IntegerField(null=True, blank=True)
    img=models.ImageField(upload_to='home/imgs/', null=True, blank=True)
    categoria=models.ManyToManyField(Categorias, related_name='categoria')
    def __str__(self):
        return self.nombre



