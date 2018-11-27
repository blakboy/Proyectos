from django.db import models
from django.contrib.auth.models import User

# Create your models here.
#Modelo del Usuario y Administrador

#El campo tipoPersona es el que define si el usuario registrado tiene permisos
#de ADMINISTRADOR o ADOPTANTE

#Por defecto sera registrado como Adoptante, solo el ADMIN puede crear otro ADMIN
class Persona(models.Model):
    nombre=models.CharField(max_length=20)
    apellido=models.CharField(max_length=20)
    user=models.OneToOneField(User,on_delete=models.CASCADE)
    tipoPersona=models.CharField(max_length=50, default="Usuario")

class Mascota(models.Model):
    nombreMascota=models.CharField(max_length=30)
    razaMascota=models.CharField(max_length=30)
    descMascota=models.TextField(max_length=100,null=True)
    estadoMascota=models.CharField(max_length=30)
    fotoMascota=models.ImageField(upload_to='mascotas/')

class Solicitud(models.Model):
    persona= models.ForeignKey(Persona,null=True,blank=True,on_delete=models.CASCADE)
    numero_mascotas = models.IntegerField()
    razones = models.TextField()


