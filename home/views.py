from django.shortcuts import render, get_object_or_404
from .models import Productos, Categorias
from django.contrib.auth.models import User
from django.http import HttpResponse
from .funciones import calculoOferta, calculoOfertaProducto, obtenerPagina, indiceInicial, indiceFinal, paginaAnterior, paginaSiguiente, categoriaslist, categoriasPrincipales
from django.core.exceptions import ObjectDoesNotExist
from login.models import CarritoProducts

# Create your views here.
def home(request):
    Carrusel1_1=Productos.objects.filter(principal=True, categoria=1)[0:4]
    Carrusel1_2=Productos.objects.filter(principal=True, categoria=1)[4:8]
    Carrusel2_1=Productos.objects.filter(principal=True, categoria=6)[0:4]
    Carrusel2_2=Productos.objects.filter(principal=True, categoria=6)[4:8]    
    calculoOferta(Carrusel1_1)
    calculoOferta(Carrusel1_2)
    calculoOferta(Carrusel2_1)
    calculoOferta(Carrusel2_2)
    objectCarrusel=[Carrusel1_1, Carrusel1_2, Carrusel2_1, Carrusel2_2]
    return render(request, 'home.html', {'objectCarrusel':objectCarrusel,'nombre1':'Lo mejor en Computadoras para Ti','nombre2':'Lo mejor en Moda para Ti'})

def acercaDe(request):
    return render(request, 'acercaDe.html')
    
def products(request, id_product):
    producto=get_object_or_404(Productos, id=id_product)
    categoria=producto.categoria.first()
    calculoOfertaProducto(producto)
    try:
        usuario=User.objects.get(username=request.user)
        producto_carrito=CarritoProducts.objects.get(carrito=usuario.id, producto=id_product)
        if producto_carrito:
            return render(request, 'products.html', {'producto':producto, 'categoria':categoria, 'existe':True, 'producto_carrito':producto_carrito})
    except ObjectDoesNotExist:
        return render(request, 'products.html', {'producto':producto, 'categoria':categoria, 'existe':False})

def categorias(request, name_categoria, orden=3, pagina=1):
    # se busca la catergoria
    categoria=get_object_or_404(Categorias, nombre=name_categoria)
    # se obtinen los productos
    inicio=indiceInicial(pagina)
    final=indiceFinal(pagina)
    # filtro de orden de los productos
    if orden==1:
        productos=Productos.objects.filter(categoria=categoria.id).order_by("precio")[inicio:final]
    elif orden==2:
        productos=Productos.objects.filter(categoria=categoria.id).order_by("-precio")[inicio:final]
    else:
        productos=Productos.objects.filter(categoria=categoria.id)[inicio:final]
    # se busca la cantidad de resultados por categoria
    cantidad=Productos.objects.filter(categoria=categoria.id)
    cantidad_n=len(cantidad)
    paginas=obtenerPagina(cantidad, 12)
    # se calcula el precio de la oferta
    calculoOferta(productos)
    #paginas siguiente y posterior
    anterior=paginaAnterior(pagina)
    siguiente=paginaSiguiente(pagina, len(paginas))
    # para el menu
    lista=categoriaslist(name_categoria)
    categoria_principal=categoriasPrincipales(name_categoria)
    return render(request, 'categoria.html', {'productos':productos,'resultados':cantidad_n, 'categoria':name_categoria,'lista':lista,'categoria_principal':categoria_principal, 'paginas':paginas, 'pagina_actual':pagina, 'anterior':anterior, 'siguiente':siguiente, 'orden':orden})

def filtroPrecio(request, name_categoria, pagina=1):
    categoria=get_object_or_404(Categorias, nombre=name_categoria)
    minimo=request.GET['min']
    maximo=request.GET['max']
    cantidad=Productos.objects.filter(categoria=categoria, precio__gte=minimo).filter(precio__lte=maximo)
    cantidad_n=len(cantidad)
    inicio=indiceInicial(pagina)
    final=indiceFinal(pagina)
    productos=Productos.objects.filter(categoria=categoria, precio__gte=minimo).filter(precio__lte=maximo).order_by("precio")[inicio:final]
    paginas=obtenerPagina(cantidad, 12)
    calculoOferta(productos)
    anterior=paginaAnterior(pagina)
    siguiente=paginaSiguiente(pagina, len(paginas))
    lista=categoriaslist(name_categoria)
    categoria_principal=categoriasPrincipales(name_categoria)
    return render(request, 'precio.html', {'productos':productos,'resultados':cantidad_n, 'categoria':name_categoria,'lista':lista,'categoria_principal':categoria_principal, 'paginas':paginas, 'pagina_actual':pagina, 'anterior':anterior, 'siguiente':siguiente, 'minimo':minimo, 'maximo':maximo })


def oferta(request, pagina=1, orden=3):
    inicio=indiceInicial(pagina)
    final=indiceFinal(pagina)
    if orden==1:
        productos=Productos.objects.exclude(oferta=None).order_by("precio")[inicio:final]
    elif orden==2:
        productos=Productos.objects.exclude(oferta=None).order_by("-precio")[inicio:final]
    else:
        productos=Productos.objects.exclude(oferta=None)[inicio:final]
    cantidad=Productos.objects.exclude(oferta=None)
    cantidad_n=len(cantidad)
    paginas=obtenerPagina(cantidad, 12)
    calculoOferta(productos)
    anterior=paginaAnterior(pagina)
    siguiente=paginaSiguiente(pagina, len(paginas))
    return render(request, 'oferta.html', {'productos':productos,'resultados':cantidad_n, 'paginas':paginas, 'pagina_actual':pagina, 'anterior':anterior, 'siguiente':siguiente, 'orden':orden})

def ofertaPrecio(request,minimo, pagina=1):
    inicio=indiceInicial(pagina)
    final=indiceFinal(pagina)
    productos=Productos.objects.exclude(oferta=None).filter(oferta__gte=minimo)[inicio:final]
    cantidad=Productos.objects.exclude(oferta=None).filter(oferta__gte=minimo)
    cantidad_n=len(cantidad)
    paginas=obtenerPagina(cantidad, 12)
    calculoOferta(productos)
    anterior=paginaAnterior(pagina)
    siguiente=paginaSiguiente(pagina, len(paginas))
    return render(request, 'ofertaprecio.html', {'productos':productos,'resultados':cantidad_n, 'paginas':paginas, 'pagina_actual':pagina, 'anterior':anterior, 'siguiente':siguiente, 'minimo':minimo})

def busquedad(request):
    buscar=request.GET['busquedad']
    productos=Productos.objects.filter(nombre__icontains=buscar)
    cantidad=len(productos)
    calculoOferta(productos)
    return render(request, 'busquedad.html', {'productos':productos, 'cantidad':cantidad, 'buscar':buscar})
