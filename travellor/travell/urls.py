from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index page'),
    path('about', views.aboutus, name='about page'),
    path('contacts', views.contacts, name='contact page'),
    path('news', views.newz, name='contact page'),
    path('newslet', views.newslet, name='newsletter'),
    path('search', views.search, name='search'),

]
