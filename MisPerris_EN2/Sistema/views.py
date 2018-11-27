from django.shortcuts import render, render_to_response, redirect, get_object_or_404
from .models import Persona, Mascota,Solicitud
from django.template import loader,RequestContext
from django.http import HttpResponse, HttpResponseRedirect
from .forms import AgregarUsuario, AgregarMascota, AgregarUsuarioAdmin,LoginForm
from django.forms import ModelForm
from django.contrib.auth.models import User
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.decorators import login_required
# Create your views here.

def index(request):
    plantilla=loader.get_template("index.html")
    contexto={
        'titulo':"Pagina Inicial",
    }
    return HttpResponse(plantilla.render(contexto,request))

#VIEWS MASCOTA
#View la cual permite listar las mascotas --ADMINISTRADOR--
@login_required(login_url='login')
def listadoMascota(request):
    mascotas=Mascota.objects.all()
    plantilla=loader.get_template("listadoMascota.html")
    contexto={
        'mascotas':mascotas,
    }
    return render (request,"listadoMascota.html",contexto)

#View la cual permite listar las mascotas --USUARIO--
@login_required(login_url='login')
def mascotaUsuario(request):
    mascotas=Mascota.objects.all()
    plantilla=loader.get_template("mascotaUsuario.html")
    contexto={
        'mascotas':mascotas,
    }
    return render (request,"mascotaUsuario.html",contexto)
    
#View de registro mascota --ADMINISTRADOR--
@login_required(login_url='login')
def registroMascota(request):
    form=AgregarMascota(request.POST or None, request.FILES or None)
    if form.is_valid():
        datos=form.cleaned_data
        regDb=Mascota(
            nombreMascota=datos.get("nombreMascota"),
            razaMascota=datos.get("razaMascota"),
            descMascota=datos.get("descMascota"),
            fotoMascota=datos.get("fotoMascota"),
            estadoMascota=datos.get("estadoMascota"))
        regDb.save()
    form=AgregarMascota()
    mascotas=Mascota.objects.all()
    contexto={
        'mascotas':mascotas,
        'form':form,
    }
    return render (request,"registroMascota.html",contexto)

#View la cual elimina una mascota
@login_required(login_url='login')
def delete_post(request, postid):
    instance = get_object_or_404(Mascota, id=postid)
    instance.delete()

    return HttpResponseRedirect("listadoMascota/")

#View la cual actualiza algun dato de la mascota
@login_required(login_url='login')
def update_post(request, postid):
    instance = get_object_or_404(Mascota, id=postid)
    form = AgregarMascota(request.POST or None,request.FILES or None, instance=instance)
    if request.method == 'POST':
        if form.is_valid():
            form.save()
            return HttpResponseRedirect("listadoMascota")
 
    return render(request, 'editarMascota.html', {'form': form})

#VIEWS USUARIO
#View para crear usuarios con el usuario ADMINISTRADOR
@login_required(login_url='login')
def gestionarUsuarioAdmin(request):
    personas=Persona.objects.all()
    form=AgregarUsuarioAdmin(request.POST)
    if form.is_valid():
        data=form.cleaned_data
        usuario=User.objects.create_user(data.get("username"),data.get("correo"),data.get("password"))
        tipo = data.get("tipoPersona")
        if tipo == "Usuario":
            usuario.is_staff=False
        else:
            usuario.is_staff=True
        usuario.save()
        regDB=Persona(user=usuario,nombre=data.get("nombre"),apellido=data.get("apellido"))
        regDB.save()
    form=AgregarUsuarioAdmin()
    personas=Persona.objects.all()
    return render(request,"gestionarUsuarioAdmin.html",{'personas':personas,'form':form})

#View para usuario (REGISTRARSE)
def gestionarUsuario(request):
    form=AgregarUsuario(request.POST)
    if form.is_valid():
        #Limpiar cada vez que se entre a la vista
        data=form.cleaned_data
        #Creamos el objeto usuario
        usuario=User.objects.create_user(data.get("username"),data.get("correo"),data.get("password"))
        #Luego lo guardamos
        usuario.save()
        #Registramos en la base de datos
        regDB=Persona(user=usuario,nombre=data.get("nombre"),apellido=data.get("apellido"))
        #Lo guardamos en la base de datos
        regDB.save()
    form=AgregarUsuario()
    usuarios=Persona.objects.all()
    return render(request,"gestionarUsuario.html",{'usuarios':usuarios,'form':form})

#VIEWS LOGIN

#View para ingregar al sistema
def ingresar(request):
    form=LoginForm(request.POST or None)
    if form.is_valid():
        data=form.cleaned_data
        user=authenticate(username=data.get("username"),password=data.get("password"))
        if user is not None:
            login(request, user)
            return redirect('user_logged')
    return render(request,"login.html",{'form':form})

#Redireccionamiento del usuario una vez logeado
def user_logged(request):
    return render(request,"index.html")

#Logout del usuario
@login_required(login_url='login')
def salir(request):
    logout(request)
    return redirect('index')


