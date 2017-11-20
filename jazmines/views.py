from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, 'index.html')

def about(request):
    return render(request, 'about.html')

def gallery(request):
    return render(request, 'gallery.html.')

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