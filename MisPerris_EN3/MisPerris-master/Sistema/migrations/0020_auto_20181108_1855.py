# Generated by Django 2.1.1 on 2018-11-08 21:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Sistema', '0019_auto_20181108_1852'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mascota',
            name='fotoMascota',
            field=models.ImageField(upload_to='mascotas/'),
        ),
    ]
