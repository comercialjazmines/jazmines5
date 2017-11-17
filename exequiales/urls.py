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

urlpatterns = [
    # Examples:
    # url(r'^$', 'funerariajazmines.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^$', construccion, name="consruccion"),
    url(r'^inicio/$', index, name="index"),
    url(r'^acercadenosotros-en construccion/$', about, name="about"),
    url(r'^parquecementerio-en construccion/$', gallery, name="gallery"),
    url(r'^planesexequiales-en construccion/$', planes, name="planes"),
    url(r'^contacto-en construccion/$', contact, name="contacto"),
    url(r'^convenios-en construccion/$', convenios, name="convenios"),
    url(r'^iniciosesion-en construccion/$', login, name="login")


]