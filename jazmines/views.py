from django.core.mail import EmailMessage
from django.shortcuts import render, render_to_response
from django.template import RequestContext


from django.http import HttpResponseRedirect



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

def sesion_usuario(request):
    return render(request, 'sesion_usuario.html')



def contacto_empresa(request):
    return render(request, 'contacto_empresa.html')



"""
class VisualizarUsuario(LoginRequiredMixin, View):
    login_url = "/"
    template_name = 'sesion_usuario'

    def get(self, request, iusuario):

        try:
            siembra = ControlSiembra.objects.get(pk=cc_usuario)
            form = usuarioform(instance=siembra)
            return render(request, self.template_name, {'form':form})

        except ControlSiembra.DoesNotExist:
            return render(request, "pages-404.html")

"""

"""
class AgregarControlSiembraAdministrador(LoginRequiredMixin, View):
    login_url = '/'
    form_class = ControlSiembraForm
    template_name = 'administrador/Controles/Siembra/agregar.html'

    def get(self, request):
        try:
            form = self.form_class()
            return render(request, self.template_name, {'form': form})

        except self.form_class().DoesNotExist:
            return render(request, "pages-404.html", {
                "msg": "No Tiene Datos Registrados. Comuniquede con el Administrador del Sistema"})
"""

"""

"""