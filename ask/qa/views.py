from django.shortcuts import render
from django.http import HttpResponse
from .models import Question, Answer
from django.core.paginator import Paginator
from django.http import HttpResponseRedirect, Http404


def test(request, *args, **kwargs):
    return HttpResponse('OK')
# Create your views here.


def question(request, question_id):
    print("test")
    try:
        q = Question.objects.get(id=question_id)
    except Question.DoesNotExist:
        raise Http404

    return render(request, 'question.html', {'question': q})


def index(request):
    try:
        page = int(request.GET.get("page"))
    except ValueError:
        page = 1
    except TypeError:
        page = 1
    questions = Question.objects.all().order_by('-id')
    paginator = Paginator(questions, 10)
    page = paginator.page(page)

    return render(request, 'list.html',
                  {'title': 'Latest',
                   'paginator': paginator,
                   'questions': page.object_list,
                   'page': page, })


def popular(request):
    try:
        page = int(request.GET.get("page"))
    except ValueError:
        page = 1
    except TypeError:
        page = 1
    questions = Question.objects.all().order_by('-rating')
    paginator = Paginator(questions, 10)
    page = paginator.page(page)

    return render(request, 'list.html',
                  {'title': 'Popular',
                   'paginator': paginator,
                   'questions': page.object_list,
                   'page': page, })
