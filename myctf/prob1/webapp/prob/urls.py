from django.conf.urls import patterns, url

from prob import views

urlpatterns = patterns('',
    url(r'^$', views.index, name='index'),
    url(r'^login/$', views.login, name='login'),
    url(r'^home/$', views.home, name='home'),
    url(r'^upload/$', views.upload, name='upload'),
    url(r'^register/$', views.register, name='register')
)
