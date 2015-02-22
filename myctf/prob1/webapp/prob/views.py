from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.template import RequestContext, loader
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from prob.models import *
from prob.forms import *
from django.utils import timezone
import re
import time
from cStringIO import StringIO
import sys

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

def logout_view(request):
    logout(request)
    return redirect('/index/')

def login_view(request):

    u = LoginForm(request.POST)

    if u.is_valid():
        print "valid"
        user = appUser.objects.filter(username=u.cleaned_data['username'], password=u.cleaned_data['password'])

        if len(user) > 0:
            user = authenticate(username='admin', password='password')
            login(request, user)
            return redirect('/index/home/')
        else:
            # TODO say login error
            return redirect('/index/')

    context = {}
    register = RegisterForm()
    context['registerForm'] = register
    context['loginForm'] = u

    return render(request, 'index.html', context)

@login_required
def home(request):

    news = News.objects.all().order_by('-pub_date');

    context = {'news':news}

    return render(request, 'home.html', context)

@login_required
def upload(request):

    if request.method == "GET":
        return render(request, 'upload.html', {})

    story = request.POST["story"]
    m = re.findall("\[.*?\]", request.POST["story"])

    for match in m:
        try:
            # Redirect output to get exec output
            old_stdout = sys.stdout
            redirected_output = sys.stdout = StringIO()
            exec(match[1:-1])
            sys.stdout = old_stdout
            result = redirected_output.getvalue() 
        except(NameError, SyntaxError) as e:
            result="[command error]"
            print e
        story = story.replace(match, result)

    admin = appUser.objects.get(username="admin")
    s = News(user=admin, text=story, pub_date=timezone.now())
    s.save()
    
    return redirect('/index/home/')
def register(request):

    context = {}

    u = RegisterForm(request.POST)

    if u.is_valid():
        return render(request, 'register.html', context)

    loginForm = LoginForm()

    return render(request, 'index.html', {'loginForm':loginForm, 'registerForm':u})
