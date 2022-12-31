from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.models import User
from django.contrib.auth import login, logout, authenticate
from .models import Perfil, Carrito, CarritoProducts
from home.models import Productos
from django.db import IntegrityError
from django.utils import timezone
from home.funciones import  calculoOfertaProducto, calculoOfertaII, edad
from datetime import datetime 
import os
from django.contrib.auth.decorators import login_required


# Create your views here.

# Funcion encargada del registro de los usuarios
def register(request):
    # Se comprueba que tipo de metodo es
    if request.method == 'GET':
        return render(request, 'register.html')
    else:
        fechaactual=datetime.now()
        nacimiento=request.POST["Fecha"]
        año=edad(nacimiento, fechaactual)
        # Primera comprobacion de la contraseña
        if request.POST["Contraseña1"] == request.POST["Contraseña2"]:
            if año >= 18:
                try:
                    usuario=User.objects.create_user(username=request.POST["Usuario"], password=request.POST["Contraseña1"], email=request.POST["Correo"])
                    usuario.save()
                    perfil = User.objects.get(username=request.POST["Usuario"], email=request.POST["Correo"])
                    Perfil.objects.create(usuario=perfil, nombre=request.POST["Nombre"], fecha_nacimiento=request.POST["Fecha"])
                    Carrito.objects.create(usuario=perfil)
                    login(request, usuario)
                    return redirect('perfil')
                except IntegrityError:
                    return render(request, 'register.html', {'error':'Usuario ya existente'})
            else:
                return render(request, 'register.html', {'error':'Eres Menor de edad'})
        return render(request, 'register.html', {'error':'Las contraseñas no son correctas'})
            
def iniciarSeccion(request):
    if request.method == 'GET':
        return render(request, 'login.html')
    else:
        usuario = authenticate(request, username=request.POST['Usuario'], password=request.POST['Contraseña1'] )
        if usuario is None:
            return render(request, 'login.html', {'error': 'Usuario o Contraseña Incorrecta'})
        else:
            login(request, usuario)
            return redirect('home')


@login_required
def cerrarSeccion(request):
    logout(request)
    return redirect('home')


@login_required
def carrito(request):
    usuario=User.objects.get(username=request.user)
    perfil=Perfil.objects.get(usuario=request.user)
    carrito=Carrito.objects.get(usuario=request.user)
    productos_carrito=CarritoProducts.objects.filter(carrito=carrito)
    cantidad=len(productos_carrito)
    calculoOfertaII(productos_carrito)
    return render(request, 'carrito.html',{'usuario':usuario, 'perfil':perfil, 'productos_carrito':productos_carrito, 'cantidad':cantidad})


@login_required
def guardar(request, id_product):
    carrito=get_object_or_404(Carrito, usuario=request.user)
    producto=get_object_or_404(Productos, id=id_product )
    cantidad=int(request.POST['cantidad'])
    fecha = timezone.now()
    if request.method == 'POST':
        if cantidad == 1:
            carrito.productos.add(producto, through_defaults={'fecha':fecha})
            carrito.cantidad_Productos=carrito.cantidad_Productos+1
            carrito.save()
        elif cantidad > 1:
            carrito.productos.add(producto, through_defaults={'cantidad':cantidad, 'fecha':fecha})
            carrito.cantidad_Productos=carrito.cantidad_Productos+1
            carrito.save()
        elif cantidad < 0 or cantidad == 0 :
            categoria=producto.categoria.first()
            calculoOfertaProducto(producto)
            return render(request, 'products.html', {'producto':producto, 'categoria':categoria, 'existe':False, 'error':'Error. En la cantidad '})
        return redirect("home")


@login_required
def eliminar(request, id_product):
    usuario=User.objects.get(username=request.user)
    carrito=get_object_or_404(Carrito, usuario=request.user)
    producto=get_object_or_404(CarritoProducts, producto=id_product, carrito=usuario.id)
    if request.method == 'POST':
        producto.delete()
        carrito.cantidad_Productos=carrito.cantidad_Productos-1
        carrito.save()
        if request.POST['carrito']=="true":
            return redirect("carrito")
        else:
            return redirect("home")


@login_required
def editar(request, id_product):
    if request.method == 'POST':
        usuario=User.objects.get(username=request.user)
        producto=get_object_or_404(Productos, id=id_product )
        producto_carrito=get_object_or_404(CarritoProducts, producto=id_product, carrito=usuario.id)
        cantidad=int(request.POST['cantidad'])
        fecha = timezone.now()
        if cantidad < 0 or cantidad == 0 :
            categoria=producto.categoria.first()
            calculoOfertaProducto(producto)
            return render(request, 'products.html', {'producto':producto, 'categoria':categoria, 'existe':True, 'error':'Error. En la cantidad', 'producto_carrito':producto_carrito})
        else:
            producto_carrito.cantidad=cantidad
            producto_carrito.fecha=fecha
            producto_carrito.save()
            if request.POST['carrito']=="true":
                return redirect("carrito")
            else:
                return redirect("home")

@login_required
def perfil(request):
    usuario=User.objects.get(username=request.user)
    perfil=Perfil.objects.get(usuario=request.user)
    carrito=Carrito.objects.get(usuario=usuario)
    productos_carrito=CarritoProducts.objects.filter(carrito=carrito)[0:10:-1]
    return render(request, 'perfil.html',{'usuario':usuario, 'perfil':perfil, 'productos_carrito':productos_carrito})


@login_required
def cambiarDatos(request):
    usuario=User.objects.get(username=request.user)
    perfil=Perfil.objects.get(usuario=request.user)
    if request.method == 'POST':
        usuario.email=request.POST['Correo']
        perfil.nombre=request.POST['Nombre']
        perfil.fecha_nacimiento=request.POST['Fecha']
        fechaactual=datetime.now()
        nacimiento=request.POST["Fecha"]
        año=edad(nacimiento, fechaactual)
        if año >= 18:
            usuario.save()
            perfil.save()
            return redirect("perfil")
        else:
            return render(request, 'modificarDatos.html', {'usuario':usuario, 'perfil':perfil, 'error':'Error. Tu, tienes que ser mayor de edad'})
    else:
        return render(request, 'modificarDatos.html', {'usuario':usuario, 'perfil':perfil})


