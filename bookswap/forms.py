from django import forms
from django.conf.urls import url
from django.contrib import admin
from django.db import connection
from django.core.exceptions import ValidationError
from django.core.validators import RegexValidator

def passcheck(value):
    if len(value) < 8:
        print value
        raise forms.ValidationError(('Password length must be greater than 7'),params={'value': value},)

def username_exist(value):
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM auth_user where username='%s'" % value)
        check = cursor.fetchall()
    print "nexist"
    if len(check) != 0:
        print "exist"
        raise forms.ValidationError(('Username already exists'),params={'value': value},)

def email_exist(value):
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM user_detail where email='%s'" % value)
        check = cursor.fetchall()
    print "nexist"
    if len(check) != 0:
        print "exist"
        raise forms.ValidationError(('Email already exists'),params={'value': value},)     

alphabet = RegexValidator(r'^[a-zA-Z ]*$', 'Only alphabets are allowed')
mob_num = RegexValidator(r'^[0-9]*.{10}$', 'Please enter a valid Mobile number')

class pass_input(forms.Form):
    Password = forms.CharField(max_length=50, label = '', widget=forms.PasswordInput(attrs={'autocomplete':'off'}), initial = "", validators = [passcheck])
    uid = forms.CharField(max_length=10, label = '', required = False)

class email_update(forms.Form):
    Email = forms.EmailField(max_length=150) 

class mobile_update(forms.Form):
    mobile = forms.CharField(max_length=10, validators = [mob_num]) 

class user_details(forms.Form):
    Name = forms.CharField(max_length=100, label = '', validators = [alphabet], widget=forms.TextInput(attrs={'placeholder': 'Your Name'}))
    Mobile = forms.CharField(max_length=10, label = '', validators = [mob_num], widget=forms.TextInput(attrs={'placeholder': 'Mobile Number'}))
    Address = forms.CharField(max_length=200, label = '', widget=forms.TextInput(attrs={'placeholder': 'Your Address'}))
    Email = forms.EmailField(max_length=150, label = '', validators = [email_exist], widget=forms.TextInput(attrs={'placeholder': 'Email Address'}))
    Username = forms.CharField(max_length=50, label = '', widget=forms.TextInput(attrs={'placeholder': 'Username'}), initial = "", validators = [username_exist])
    Password = forms.CharField(max_length=50, label = '', widget=forms.PasswordInput(attrs={'placeholder': 'Password'}), initial = "", validators = [passcheck])
    ConfirmPassword = forms.CharField(max_length=50, label = '', widget=forms.PasswordInput(attrs={'placeholder': 'Re-enter Password'}))

    def clean(self):
        password1 = self.cleaned_data.get('Password')
        password2 = self.cleaned_data.get('ConfirmPassword')

        if password1 != password2:
            raise forms.ValidationError("Passwords don't match")

        return self.cleaned_data

class login_details(forms.Form):
    Username = forms.CharField(max_length=50, widget=forms.TextInput(attrs={'class' : 'loginInp'}))
    Password = forms.CharField(max_length=50, widget=forms.PasswordInput(attrs={'class' : 'loginInp'}))

class book_search(forms.Form):
    Title = forms.CharField(max_length=200, label = '', widget=forms.TextInput(attrs={'placeholder': 'Add your books here'}))
