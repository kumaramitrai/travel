from django.db import models


# Create your models here.

class Destination(models.Model):
    name = models.CharField(max_length=100)
    img = models.ImageField(upload_to='pics')
    desc = models.TextField()
    price = models.IntegerField()
    offer = models.BooleanField(default=False)


class Testimonials(models.Model):
    testi_name = models.CharField(max_length=100)
    testi_desc = models.TextField()
    testi_client = models.BooleanField(default=False)


class about(models.Model):
    abt_name = models.CharField(max_length=100)
    abt_desc = models.TextField()
    abt_img = models.ImageField(upload_to='abt_pics')
    abt_course = models.IntegerField()
    abt_students = models.IntegerField()
    abt_teachers = models.IntegerField()
    abt_countries = models.IntegerField()


class about_card(models.Model):
    abt_card_name = models.CharField(max_length=100)
    abt_card_desc = models.TextField()
    abt_card_img = models.ImageField(upload_to='abt_pics')


class about_team(models.Model):
    abt_team_name = models.CharField(max_length=100)
    abt_team_desc = models.TextField()
    abt_team_img = models.ImageField(upload_to='team')


class news(models.Model):
    news_header = models.CharField(max_length=100)
    news_description = models.TextField()
    news_img = models.ImageField(upload_to='news_pics')
    news_date = models.DateField()


class category(models.Model):
    cat_name = models.CharField(max_length=100)
    cat_desc = models.TextField()


class newsletter(models.Model):
    nl_name = models.CharField(max_length=100)
    nl_email = models.EmailField(max_length=250)


class contact(models.Model):
    Name = models.CharField(max_length=100)
    Email = models.EmailField(max_length=250)
    Subject = models.CharField(max_length=250)
    Message = models.TextField()
