from django.shortcuts import redirect, render
from django.contrib.auth.models import User, auth
from django.contrib import messages
from django.http import HttpResponseRedirect


# Create your views here.
def logout(request):
    auth.logout(request)
    return redirect('/')


def login(request):
    if request.method == 'POST':
        user_name = request.POST['uname']
        password = request.POST['password']

        user = auth.authenticate(username=user_name, password=password)

        if user is not None:
            auth.login(request, user)
            return redirect("/")
        else:
            messages.info(request, 'invalid credentials')
            return HttpResponseRedirect(request.path_info)
    else:
        return render(request, 'login.html')


def signup(request):
    if request.method == 'POST':
        first_name = request.POST['fname']
        last_name = request.POST['lname']
        user_name = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']
        confirm_password = request.POST['confirmPass']

        if password == confirm_password:
            if User.objects.filter(username=user_name).exists():
                messages.info(request, "username already taken")
                return HttpResponseRedirect(request.path_info)
            elif User.objects.filter(email=email).exists():
                messages.info(request, "email already registered")
                return HttpResponseRedirect(request.path_info)
            else:
                user = User.objects.create_user(username=user_name, password=password, email=email,
                                                first_name=first_name, last_name=last_name, )
                user.save()
                print("user created successfully")
                return redirect('/accounts/login')
        else:
            messages.info(request, "password did not matched")
            return HttpResponseRedirect(request.path_info)
      # return redirect('/')
    else:
        return render(request, 'signup.html')
