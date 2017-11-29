"""exequiales URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import include, url
from django.contrib import admin
from jazmines.views import index
from jazmines.views import about
from jazmines.views import gallery
from jazmines.views import planes
from jazmines.views import contact
from jazmines.views import convenios
from jazmines.views import login
from jazmines.views import construccion
from jazmines.views import terminos
from jazmines.views import obituarios
from jazmines.views import alianzas
from jazmines.views import modificar_obituarios
from jazmines.views import agregar_obituarios
from jazmines.views import historico_obituarios
from jazmines.views import sesion_obituarios
from jazmines.views import actualizar_noticias
from jazmines.views import agregar_eventos
from jazmines.views import historico_eventos
from jazmines.views import sesion_eventos
from jazmines.views import modificar_eventos
from jazmines.views import sesion_usuario
from jazmines.views import contacto_empresa


urlpatterns = [
    # Examples:
    # url(r'^$', 'funerariajazmines.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^$', construccion, name="consruccion"),
    url(r'^inicio/$', index, name="index"),
    url(r'^acercadenosotros-enconstruccion/$', about, name="about"),
    url(r'^parquecementerio-enconstruccion/$', gallery, name="gallery"),
    url(r'^planesexequiales-enconstruccion/$', planes, name="planes"),
    url(r'^contacto-enconstruccion/$', contact, name="contacto"),
    url(r'^convenios-enconstruccion/$', convenios, name="convenios"),
    url(r'^iniciosesion-enconstruccion/$', login, name="login"),
    url(r'^obituarios-enconstruccion/$', obituarios, name="obituarios"),
    url(r'^convenios-enconstruccion/$', convenios, name="convenios"),
    url(r'^terminos-enconstruccion/$', terminos, name="terminos"),
    url(r'^alianzas-enconstruccion/$', alianzas, name="alianzas"),
    url(r'^sesion_obituarios-enconstruccion/$', sesion_obituarios, name="sesion_obituarios"),
    url(r'^agregar_obituarios-enconstruccion/$', agregar_obituarios, name="agregar_obituarios"),
    url(r'^modificar_obituarios-enconstruccion/$', modificar_obituarios, name="modificar_obituarios"),
    url(r'^historico_obituarios-enconstruccion/$', historico_obituarios, name="historico_obituarios"),
    url(r'^actualizar_noticias-enconstruccion/$', actualizar_noticias, name="actualizar_noticias"),
    url(r'^agregar_eventos-enconstruccion/$', agregar_eventos, name="agregar_eventos"),
    url(r'^historico_eventos-enconstruccion/$', historico_eventos, name="historico_eventos"),
    url(r'^modificar_eventos-enconstruccion/$', modificar_eventos, name="modificar_eventos"),
    url(r'^sesion_eventos-enconstruccion/$',sesion_eventos, name="sesion_eventos"),
    url(r'^correo/$',sesion_usuario ,name="sesion_usuario" ),
    url(r'^contacto_empresa/$', contacto_empresa, name="contacto_empresa"),


]