# Generated by Django 2.1.1 on 2018-11-08 03:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Sistema', '0014_persona_tipopersona'),
    ]

    operations = [
        migrations.AddField(
            model_name='persona',
            name='correo',
            field=models.EmailField(default=1, max_length=254),
            preserve_default=False,
        ),
    ]
