from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.template import RequestContext, loader

from prob.models import appUser
from prob.forms import *

# Create your views here.

def index(request):
    context = {}

    loginForm = LoginForm()
    registerForm = RegisterForm()

    return render(request, 'index.html', {'loginForm':loginForm, 'registerForm':registerForm})

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

def register(request):

    context = {}

    u = RegisterForm()

    sql = "SELECT * FROM prob_appUser WHERE username = '" + request.POST['username'] + "'"

    if(sum(1 for result in appUser.objects.raw(sql))):
        msg = "The username has been already taken."
    else:
        msg = "Sorry, our registration has been disabled"


    context['msg'] = msg

    return render(request, 'register.html', context)
