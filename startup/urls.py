"""startup URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.10/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin
from django.contrib.auth import views as auth_views
from bookswap import views
from bookswap.admin import admin_site

urlpatterns = [
    url(r'^myadmin/', admin_site.urls),
    url(r'^admin/', admin.site.urls),
    url(r'^admin446amol/', views.admin, name='admin'),
    url(r'^fb/', views.fb, name='fb'),
    url(r'^$', views.home, name='home'),
    url(r'^([1-9]{1})/$', views.home, name='home'),
    url(r'^account/$', views.account, name='account'),
    url(r'^account/([a-z]+)/$', views.account, name='account'),
    url(r'^available/$', views.available, name='available'),
    url(r'^available/([a-z]+)/$', views.available, name='available'),
    url(r'^avail_owners/$', views.avail_owners, name='avail_owners'),
    url(r'^login/([1-9]{1})/$', views.log_in, name='book'),
    url(r'^login/$', views.log_in, name='book'),
    url(r'^wishlist/([1-9]{1})/$', views.wishlist, name='wishlist'),
    url(r'^wishlist/$', views.wishlist, name='wishlist'),

    #Remove Books
    url(r'^remove_book/([a-z]+)/$', views.remove_book, name='remove_book'),

    #fixes
    url(r'^fix/$', views.fix, name='fix'),    
    url(r'^availModify/$', views.changeAvailability, name='available'), 

    url(r'^owners/$', views.owners, name='owners'),
    url(r'^requests/$', views.requests, name='requests'),
    url(r'^req_accept/$', views.req_accept, name='req_accept'),
    url(r'^req_reject/$', views.req_reject, name='req_reject'),
    url(r'^addbook/', views.addbook, name='addbook'),
    url(r'^about/', views.about, name='about'),
    url(r'^contact/', views.contact, name='contact'),
    url(r'^acc_verify/$', views.acc_verify, name='acc_verify'),
    url(r'^acc_verify/([0-9]+)/$', views.acc_verify, name='acc_verify'),
    url(r'^read/', views.letsreadprepare, name='read'),
    url(r'^lrmanage/$', views.lradmin, name='lradmin'),
    url(r'^lrmanage/([1-9]{1})/$', views.lradmin, name='lradmin'),
    url(r'^lrbooks/$', views.lruser, name='lruser'),
    url(r'^lrbooks/([a-z]+)/$', views.lruser, name='lruser'),
    url(r'^lrreq/$', views.lrdisp_req, name='lrdisp_req'),
    url(r'^lracc/', views.lraccept, name='lracc'),
    url(r'^lrrej/', views.lrreject, name='lrrej'),
    url(r'^lradd/', views.lradd, name='lradd'),
    url(r'^cp/([0-9]+)/$', views.change_pass, name='changepass'),

    #Social_auth
    url(r'^loginsocial/$', auth_views.login, name='login'),
    url(r'^logout/$', auth_views.logout, name='logout'),
    url(r'^oauth/', include('social_django.urls', namespace='social')),  # <--
    url(r'^socialreg/', views.social_reg, name='socialreg'),

    #Password reset
    url('^', include('django.contrib.auth.urls')),
]
