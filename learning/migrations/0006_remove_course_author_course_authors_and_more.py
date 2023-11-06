# Generated by Django 4.2.5 on 2023-10-09 11:23

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('learning', '0005_alter_lesson_course'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='course',
            name='author',
        ),
        migrations.AddField(
            model_name='course',
            name='authors',
            field=models.ManyToManyField(db_table='course_authors', related_name='authors', to=settings.AUTH_USER_MODEL, verbose_name='Автор курса'),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='course',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='lessons', related_query_name='lesson', to='learning.course', verbose_name='Курс'),
        ),
    ]