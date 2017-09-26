from django.contrib import admin
from django.contrib.admin import AdminSite

# Register your models here.

from .models import UserDetail, Collection, Wishlist, Requests, Letsbooks, Lrreq

class MyAdminSite(AdminSite):
    site_header = 'Monty Python administration'

admin_site = MyAdminSite(name='myadmin')
admin_site.register(UserDetail)

admin.site.register(UserDetail)
admin.site.register(Collection)
admin.site.register(Wishlist)
admin.site.register(Requests)
admin.site.register(Letsbooks)
admin.site.register(Lrreq)
