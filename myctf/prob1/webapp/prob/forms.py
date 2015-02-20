from django import forms
from django.forms import ModelForm
from prob.models import appUser

class LoginForm(ModelForm):
    class Meta:
        model = appUser
