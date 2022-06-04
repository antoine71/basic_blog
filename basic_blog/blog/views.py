from django.shortcuts import render

from .models import Article


def index(request):
    articles = Article.objects.all()
    context = {"articles": articles}
    return render(request, "blog/index.html", context)


def article(request, slug):
    article = Article.objects.get(slug=slug)
    context = {
        "article": article
    }
    return render(request, "blog/article.html", context)
