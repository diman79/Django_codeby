from django.conf import settings
from django.db import models
from django.shortcuts import reverse


# Create your models here.
class Course(models.Model):
    # id = models.AutoField()
    title = models.CharField(verbose_name='Название курса', max_length=255, unique=True)
    authors = models.ManyToManyField(settings.AUTH_USER_MODEL, db_table='course_authors',
                                     related_name='authors', verbose_name='Автор курса')
    description = models.TextField(verbose_name='Описание курса', null=True, blank=True, default='', max_length=500)
    start_date = models.DateField(verbose_name='Старт курса')
    duration = models.PositiveIntegerField(verbose_name='Продолжительность')
    price = models.PositiveIntegerField(verbose_name='Цена', blank=True)
    count_lessons = models.PositiveIntegerField(verbose_name='Количество уроков')

    def get_authors(self):
        return [settings.AUTH_USER_MODEL.name for settings.AUTH_USER_MODEL in self.authors.all()]

    class Meta:
        verbose_name_plural = 'Курсы'
        verbose_name = 'Курс'
        ordering = ['title']
        permissions = (
            ('modify_course', 'Can modify course content'),
        )

    def __str__(self):
        return f'{self.title}: Старт {self.start_date}'

    def get_absolute_url(self):
        return reverse('detail', kwargs={'course_id': self.pk})


class Lesson(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name='Курс')
    name = models.CharField(verbose_name='Название урока', max_length=255, unique=True)
    preview = models.TextField(verbose_name='Описание курса', max_length=255)

    class Meta:
        verbose_name_plural = 'Уроки'
        verbose_name = 'Урок'
        ordering = ['name']
        permissions = (
            ('modify_lesson', 'Can modify lesson content'),
        )

    def __str__(self):
        return f'{self.course}: Урок {self.name}'


class Tracking(models.Model):
    lesson = models.ForeignKey(Lesson, on_delete=models.PROTECT, verbose_name='Урок')
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, verbose_name='Ученик')
    passed = models.BooleanField(default=None, verbose_name='Пройден?')

    class Meta:
        ordering = ['-user']


class Review(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, verbose_name='Ученик')
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name='Курс')
    content = models.TextField(verbose_name='Текст отзыва', max_length=250, unique_for_year='sent_date')
    sent_date = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name_plural = 'Отзывы'
        verbose_name = 'Отзыв'
        ordering = ('-sent_date', )
        # unique_together = ('user', 'course', )
