from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, 'index.html')

def about(request):
    return render(request, 'about.html')

def gallery(request):
    return render(request, 'gallery.html')

def convenios(request):
    return render(request, 'convenios.html')

def planes(request):
    return render(request, 'planes.html')

def contact(request):
    return render(request, 'contact.html')

def login(request):
    return render(request, 'login.html')

def construccion(request):
    return render(request, 'construccion.html')

def obituarios(request):
    return render(request, 'obituarios.html')

def terminos(request):
    return render(request, 'terminos.html')

def alianzas(request):
    return render(request, 'alianzas.html')

def sesion_obituarios(request):
    return render(request, 'sesion_obituarios.html')

def modificar_obituarios(request):
    return render(request, 'modificar_obituarios.html')

def agregar_obituarios(request):
    return render(request, 'agregar_obituarios.html')

def historico_obituarios(request):
    return render(request, 'historico_obituarios.html')

def actualizar_noticias(request):
    return render(request, 'actualizar_noticias.html')

def agregar_eventos(request):
    return render(request, 'agregar_eventos.html')

def historico_eventos(request):
    return render(request, 'historico_eventos.html')

def modificar_eventos(request):
    return render(request, 'modificar_eventos.html')

def sesion_eventos(request):
    return render(request, 'sesion_eventos.html')
