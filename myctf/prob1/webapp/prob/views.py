from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.template import RequestContext, loader

from prob.models import appUser
from prob.forms import LoginForm

# Create your views here.

def index(request):
    context = {}

    form = LoginForm()
    print form

    print "test"

    return render(request, 'index.html', {'form': form})

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
