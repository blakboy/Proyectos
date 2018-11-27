from django.forms import ModelForm, Textarea, TextInput, ChoiceField,PasswordInput,EmailInput
from django import forms
from .models import Persona, Mascota

#Estados de la mascota
status=[
    ('-','Seleccione Estado'),
    ('Rescatado','Rescatado'),
    ('Disponible','Disponible'),
    ('Adoptado','Adoptado'),
]

#Formulario de registro ADOPTANTE
class AgregarUsuario(forms.Form):
    username=forms.CharField(widget=forms.TextInput(), label="Nombre de Usuario")
    password=forms.CharField(widget=forms.PasswordInput(), label="Contraseña")
    correo=forms.EmailField(widget=forms.EmailInput(),label="Correo")
    nombre=forms.CharField(widget=forms.TextInput(),label="Nombre Real")
    apellido=forms.CharField(widget=forms.TextInput(),label="Apellido")

#Formulario de registro ADMINISTRADOR
class AgregarUsuarioAdmin(forms.Form):
    nombre=forms.CharField(widget=forms.TextInput(),label="Nombre Usuario")
    apellido=forms.CharField(widget=forms.TextInput(),label="Apellido Usuario")
    correo=forms.EmailField(widget=forms.EmailInput(),label="Correo Usuario")
    username=forms.CharField(widget=forms.TextInput(), label="Nick Usuario")
    password=forms.CharField(widget=forms.PasswordInput(), label="Contraseña")  
    tipoPersona=forms.ChoiceField(choices=(('Usuario','Usuario'),('Administrador','Administrador')),label="Tipo de Usuario")

#Formulario para Logearse
class LoginForm(forms.Form):
    username=forms.CharField(widget=forms.TextInput(), label="Nombre de Usuario")
    password=forms.CharField(widget=forms.PasswordInput(), label="Contraseña")

#Formulario para registrar una mascota
class AgregarMascota(ModelForm):
    class Meta:
        model = Mascota
        fields = ["nombreMascota","razaMascota","descMascota","estadoMascota","fotoMascota"]
        labels = {
            'nombreMascota': 'Nombre de la Mascota  ',
            'razaMascota': 'Raza de la Mascota ',
            'descMascota': 'Descripcion de la Mascota ',
            'fotoMasota': 'Foto de la Mascota ',
        }
        widgets = {
            'nombreMascota' : TextInput(attrs={'class':'form-control'}),
            'razaMascota' : TextInput(attrs={'class':'form-control'}),
            'descMascota' : Textarea(attrs={'class':'form-control'}),
        }
    estadoMascota=forms.ChoiceField(choices=status,label="Estado de la mascota")
