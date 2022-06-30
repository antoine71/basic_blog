from django.shortcuts import render
from django.core.paginator import Paginator

from .models import Article


def index(request):
    articles = Article.objects.all().order_by("-date_created")

    paginator = Paginator(articles, 5)
    try:
        page_number = request.GET.get("page")
    except AttributeError:
        page_number = 1
    page_obj = paginator.get_page(page_number)
    image_absolute_url = request.build_absolute_uri('static/assets/img/django.png')
    context = {
        "articles": articles,
        "page_obj": page_obj,
        'image_absolute_url': image_absolute_url,
    }
    return render(request, "blog/index.html", context)


def article(request, slug):
    article = Article.objects.get(slug=slug)
    image_absolute_url = request.build_absolute_uri(article.image.url)
    context = {"article": article, "image_absolute_url": image_absolute_url}
    return render(request, "blog/article.html", context)
