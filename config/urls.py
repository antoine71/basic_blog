"""django_basic_template URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.contrib import admin
from django.urls import path, include
from django.views.generic import TemplateView
from basic_blog.blog.views import index
from django.conf.urls.static import static

urlpatterns = [
    path("", index, name="home"),
    path("blog/", include("basic_blog.blog.urls", namespace="blog")),
    path(
        "about/", TemplateView.as_view(template_name="pages/about.html"), name="about"
    ),
    path(
        "contact",
        TemplateView.as_view(template_name="pages/contact.html"),
        name="contact",
    ),
    path(settings.ADMIN_URL, admin.site.urls),
    path("markdownx/", include("markdownx.urls")),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
