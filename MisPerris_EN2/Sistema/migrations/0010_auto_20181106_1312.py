# Generated by Django 2.1.1 on 2018-11-06 16:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Sistema', '0009_auto_20181106_1240'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mascota',
            name='fotoMascota',
            field=models.ImageField(upload_to='fotos/'),
        ),
    ]
