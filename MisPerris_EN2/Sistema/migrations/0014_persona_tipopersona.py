# Generated by Django 2.1.1 on 2018-11-07 23:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Sistema', '0013_auto_20181107_1123'),
    ]

    operations = [
        migrations.AddField(
            model_name='persona',
            name='tipoPersona',
            field=models.CharField(default='Usuario', max_length=50),
        ),
    ]