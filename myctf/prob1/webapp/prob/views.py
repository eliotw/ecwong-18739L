from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.template import RequestContext, loader

from prob.models import *
from prob.forms import *

# Create your views here.

def index(request):
    context = {}

    if request.method == 'GET':
        loginForm = LoginForm()
        registerForm = RegisterForm()

        return render(request, 'index.html', {'loginForm':loginForm, 'registerForm':registerForm})

    u = RegisterForm(request.POST)
    
    if u.is_valid():
        return render(request, 'register.html', context)

    loginForm = LoginForm()

    return render(request, 'index.html', {'loginForm':loginForm, 'registerForm':u})


def login(request):

    u = LoginForm(request.POST)

    if u.is_valid():
        print "valid"
        user = appUser.objects.filter(username=u.cleaned_data['username'], password=u.cleaned_data['password'])

        if len(user) > 0:
                print "logged in"
        else:
            # TODO say login error
            return redirect('/index/')
    context = {}

    return render(request, 'home.html', context)

def home(request):

    news = News.objects.all();

    context = {'news':news}

    return render(request, 'home.html', context)

def upload(request):
    
    return render(request, 'upload.html', {})

def register(request):

    context = {}

    u = RegisterForm(request.POST)

    if u.is_valid():
        return render(request, 'register.html', context)

    loginForm = LoginForm()

    return render(request, 'index.html', {'loginForm':loginForm, 'registerForm':u})
