"""DjangoEccomerce URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls.static import static 
from django.conf import settings
from login import views
from home.views import home, products, categorias, oferta, acercaDe, busquedad, filtroPrecio, ofertaPrecio

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home, name="home"),
    path('buscar/', busquedad, name="busquedad"),
    path('register/', views.register, name="register"),
    path('login/', views.iniciarSeccion, name="login"),
    path('close/', views.cerrarSeccion, name="close"),
    path('cambiardatos/', views.cambiarDatos, name="cambiardatos"),
    path('perfil/', views.perfil, name="perfil"),
    path('carrito/', views.carrito, name="carrito"),
    path('acercade/', acercaDe, name="acercaDe"),
    path('products/<int:id_product>', products, name="products"),
    path('products/<int:id_product>/save', views.guardar, name="guardar"),
    path('products/<int:id_product>/delate', views.eliminar, name="eliminar"),
    path('products/<int:id_product>/edit', views.editar, name="editar"),
    path('categoria/<str:name_categoria>/pag/<int:pagina>/orden/<int:orden>/', categorias, name="categoria"),
    path('categoria/<str:name_categoria>/pag/<int:pagina>', categorias, name="categoria"),
    path('categoria/<str:name_categoria>/', categorias, name="categoria"),
    path('categoria/precio/<str:name_categoria>/', filtroPrecio, name="precio"),
    path('categoria/precio/<str:name_categoria>/pag/<int:pagina>/', filtroPrecio, name="precio"),
    path('ofertas/pag/<int:pagina>/orden/<int:orden>/', oferta, name="oferta"),
    path('ofertas/pag/<int:pagina>', oferta, name="oferta"),
    path('ofertas/', oferta, name="oferta"),
    path('ofertas/min/<int:minimo>', ofertaPrecio, name="ofertaPrecio"),
    path('ofertas/min/<int:minimo>pag/<int:pagina>/', ofertaPrecio, name="ofertaPrecio"),
]
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
