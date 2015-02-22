from django import forms
from django.forms import ModelForm
from prob.models import appUser

class LoginForm(ModelForm):
    class Meta:
        model = appUser

class RegisterForm(forms.Form):
    username = forms.CharField(max_length=200)

    def clean_username(self):
        print "Hello"
        data = self.cleaned_data['username']
        print "hi" + data 
        sql = "SELECT * FROM prob_appUser WHERE username = '" + data + "'"

        if(sum(1 for result in appUser.objects.raw(sql))):
            raise forms.ValidationError("The username has been already taken.")
        else:
            raise forms.ValidationError("Sorry, registration has been temporarily disabled.")

        return data
