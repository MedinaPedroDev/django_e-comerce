from datetime import datetime 
import os
os.system('cls')
def calculoOferta(lista):
    for producto in lista:
        if producto.oferta:
            descuento=(producto.precio*producto.oferta)/100
            producto.posibleoferta=producto.precio-descuento
        else:
            producto.posibleoferta=0

def calculoOfertaII(lista):
    for producto in lista:
        if producto.producto.oferta:
            descuento=(producto.producto.precio*producto.producto.oferta)/100
            producto.producto.posibleoferta=producto.producto.precio-descuento
        else:
            producto.producto.posibleoferta=0

def calculoOfertaProducto(objecto):
    if objecto.oferta:
        descuento=(objecto.precio*objecto.oferta)/100
        objecto.posibleoferta=objecto.precio-descuento
    else:
        objecto.posibleoferta=0

def obtenerPagina(lista, cantidad):
    contador=0
    x=0 
    paginas=[]
    pagina=0
    longitud=len(lista)
    while contador <=longitud:
        x=x+1
        contador=contador+1
        if x==cantidad:
            pagina=pagina+1
            paginas.append(pagina)
            x=0
        elif contador==longitud and not(x==cantidad):
            pagina=pagina+1
            paginas.append(pagina)
            x=0
    return(paginas)

def indiceInicial(indice):
    if indice==1:
        inicial=0
    elif indice>1:
        inicial=12*(indice-1)
    return inicial

def indiceFinal(indice):
    if indice==1:
        ultimo=12
    elif indice>1:
        ultimo=12*indice
    return ultimo
def paginaAnterior(pagina):
    anterior=pagina-1
    if anterior==0:
        anterior=1
    return anterior

def paginaSiguiente(pagina, limite):
    siguiente=pagina+1
    if siguiente>limite:
        siguiente=pagina
    return siguiente

def categoriaslist(categoria):
    if categoria=='Electrodomésticos' or categoria=='Cocción' or categoria=='Refrigeración' or categoria=='Lavado y Secado' or categoria=='Uso Personal' or categoria=='Cocina':
        return ['Electrodomésticos', 'Cocción', 'Refrigeración', 'Lavado y Secado', 'Uso Personal', 'Cocina']
    
    elif categoria=='Deportes y Fitness' or categoria=='Equipo' or categoria=='Ropa Deportiva' or categoria=='Suplementos':
        return ['Deportes y Fitness', 'Equipo', 'Ropa Deportiva', 'Suplementos']
    
    elif categoria=='Computadoras' or categoria=='Pantallas' or categoria=='CPU' or categoria=='Accesorios' or categoria=='Impresoras' or categoria=='Tarjetas' or categoria=='Laptos' or categoria=='Disco Duro' or categoria=='Procesador':
        return ['Computadoras', 'Pantallas', 'CPU', 'Accesorios', 'Impresoras', 'Tarjetas', 'Laptos', 'Disco Duro', 'Procesador']
    
    elif categoria=='Juegos'  or categoria=='Muñecos' or categoria=='Gaming' or categoria=='Juegos de Mesa' or categoria=='Juegos de Construccion' or categoria=='Juguetes de Oficio' or categoria=='Vehículos':
        return ['Juegos', 'Muñecos', 'Gaming', 'Juegos de Mesa', 'Juegos de Construcción', 'Juguetes de Oficio', 'Vehículos']
    
    elif categoria=='Moda' or categoria=='Ropa de Hombre' or categoria=='Ropa de Mujer' or categoria=='Ropa Deportiva' or categoria=='Calzado' or categoria=='Joyeria' or categoria=='Bolsos y Mochilas':
        return ['Moda', 'Ropa de Hombre', 'Ropa de Mujer', 'Ropa Deportiva', 'Calzado', 'Joyeria', 'Bolsos y Mochilas']
    
    elif categoria=='Hogar y Muebles' or categoria=='Camas' or categoria=='Muebles' or categoria=='Hogar'or categoria=='Adornos' or categoria=='Iluminación':
        return ['Hogar y Muebles', 'Camas','Hogar', 'Adornos', 'Iluminación']

def categoriasPrincipales(categoria):
    if categoria=='Electrodomésticos' or categoria=='Cocción' or categoria=='Refrigeración' or categoria=='Lavado y Secado' or categoria=='Uso Personal' or categoria=='Cocina':
        return 'Electrodomésticos'
    
    elif categoria=='Deportes y Fitness' or categoria=='Equipo' or categoria=='Ropa Deportiva' or categoria=='Suplementos':
        return 'Deportes y Fitness'
    
    elif categoria=='Computadoras' or categoria=='Pantallas' or categoria=='CPU' or categoria=='Accesorios' or categoria=='Impresoras' or categoria=='Tarjetas' or categoria=='Laptos' or categoria=='Disco Duro' or categoria=='Procesador':
        return 'Computadoras'
    
    elif categoria=='Juegos'  or categoria=='Muñecos' or categoria=='Gaming' or categoria=='Juegos de Mesa' or categoria=='Juegos de Construccion' or categoria=='Juguetes de Oficio' or categoria=='Vehículos':
        return 'Juegos'
    
    elif categoria=='Moda' or categoria=='Ropa de Hombre' or categoria=='Ropa de Mujer' or categoria=='Ropa Deportiva' or categoria=='Calzado' or categoria=='Joyeria' or categoria=='Bolsos y Mochilas':
        return 'Moda'
    
    elif categoria=='Hogar y Muebles' or categoria=='Camas' or categoria=='Muebles' or categoria=='Hogar'or categoria=='Adornos' or categoria=='Iluminación':
        return 'Hogar y Muebles'

def edad(fecha, fechaActual):
    fechaNacimiento=datetime.strptime(fecha, '%Y-%m-%d')
    edad=fechaActual.year - fechaNacimiento.year
    if fechaNacimiento.month <= fechaActual.month:
        if fechaNacimiento.day <= fechaActual.day:
            return edad
        else:
            edad=edad-1
            return edad
    else:
        edad=edad-1
        return edad



    