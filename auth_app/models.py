from django.db import models

# Create your models here.
from django.contrib.auth.models import AbstractUser
from django.db import models

from LMS5_Project import settings
from .functions import get_timestamp_path_user
from django.conf import settings


class User(AbstractUser):
    username = models.EmailField(unique=False, null=True)
    email = models.EmailField(unique=True, verbose_name='Email')
    birthday = models.DateField(verbose_name='Дата рождения', blank=False)
    description = models.TextField(verbose_name='Обо мне', null=True, blank=True, default='')
    avatar = models.ImageField(verbose_name='Фото', blank=True, upload_to=get_timestamp_path_user)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['birthday']

    class Meta:
        verbose_name_plural = 'Участники'
        verbose_name = 'Участник'
        ordering = ['last_name']

    def __str__(self):
        return f'Участник {self.first_name} {self.last_name}: {self.email}'




