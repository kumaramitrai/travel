from django.contrib import messages
from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect
from .models import Destination, Testimonials, about, about_card, about_team, news, category, contact, newsletter
from .ContactForm import ContactForm
from django.core.paginator import Paginator, Page, PageNotAnInteger, EmptyPage


# Create your views here.
def index(request):
    dests = Destination.objects.all()
    testimon = Testimonials.objects.all()
    nws_latest = news.objects.all().order_by('-news_date')[:3]

    return render(request, "index.html", {'dests': dests, 'testimon': testimon, 'nws_latest': nws_latest})


def aboutus(request):
    abt = about.objects.all()
    abtcard = about_card.objects.all()
    abteams = about_team.objects.all()
    return render(request, "about.html", {'abt': abt, 'abtcard': abtcard, 'abteams': abteams})


def contacts(request):
    form = ContactForm

    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            cont_name = request.POST['Name']
            cont_email = request.POST['Email']
            cont_subject = request.POST['Subject']
            cont_msg = request.POST['Message']
            conts = contact(Name=cont_name, Email=cont_email, Subject=cont_subject, Message=cont_msg)
            conts.save()
            return redirect('/')
        else:
            messages.info(request, 'Forms Went Wrong')
            return HttpResponseRedirect(request.path_info)

    else:
        return render(request, "contact.html", {'form': form})


def newz(request):
    nws_latest = news.objects.all().order_by('-news_date')[:4]
    cat = category.objects.all()
    nws_set = news.objects.all()
    # pagination below
    paginator = Paginator(nws_set, 2)
    page = request.GET.get('page')
    try:
        nws = paginator.page(page)
    except PageNotAnInteger:
        nws = paginator.page(1)
    except EmptyPage:
        nws = paginator.page(paginator.num_pages)

    return render(request, "news.html", {'nws': nws, 'cat': cat, 'nws_latest': nws_latest})


def newslet(request):
    if request.method == 'POST':
        nl_name = request.POST['nl_name']
        nl_email = request.POST['nl_email']
        newsl = newsletter(nl_name=nl_name, nl_email=nl_email)
        newsl.save()
        return redirect('/')


def login(request):
    return render(request, "login.html")


def signup(request):
    return render(request, "signup.html")


def search(request):
    Cityname = request.POST['city']
    destination = Destination.objects.filter(name__icontains=Cityname)
    return render(request, "destinations.html", {'destination': destination})
