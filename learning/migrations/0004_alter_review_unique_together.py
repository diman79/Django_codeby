# Generated by Django 4.2.5 on 2023-10-06 10:32

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('learning', '0003_review'),
    ]

    operations = [
        migrations.AlterUniqueTogether(
            name='review',
            unique_together=set(),
        ),
    ]
