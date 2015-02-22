from django.db import models

# Create your models here.
class appUser(models.Model):

    username = models.CharField(max_length=20)
    password = models.CharField(max_length=20)

    def __str__(self):
        return self.username

class News(models.Model):

    user = models.ForeignKey(appUser)

    text = models.CharField(max_length=1000)
    pub_date = models.DateTimeField('date published')

    def __unicode__(self):
        return self.text
