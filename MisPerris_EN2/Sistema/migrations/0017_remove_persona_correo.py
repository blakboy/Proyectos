# Generated by Django 2.1.1 on 2018-11-08 03:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Sistema', '0016_auto_20181108_0025'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='persona',
            name='correo',
        ),
    ]
