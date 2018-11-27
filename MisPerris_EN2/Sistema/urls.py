from django.urls import path
from . import views
from django.contrib.auth import views as auth_views
from django.conf.urls import url
from django.urls import reverse_lazy
#URLS Correspondientes con las views
#Orden:
#url([NOMBRE EN URL],[VIEW DEFINIDA],[NOMBRE DE LA URL CON LA CUAL SE PODRA INSTANCIAR])
urlpatterns=[
    path(r'',views.index),
    url(r'^index/$',views.index,name="index"),
    url(r'listadoMascota',views.listadoMascota,name="listadoMascota"),
    url(r'registroMascota',views.registroMascota,name="registroMascota"),
    url(r'^mascota/delete/(?P<postid>\d+)/', views.delete_post, name='delete_post'),
    url(r'^mascota/update/(?P<postid>\d+)/', views.update_post, name='update_post'),
    url(r'^mascotaUsuario',views.mascotaUsuario,name="mascotaUsuario"),
    url(r'^gestionUsuario/$',views.gestionarUsuario,name="gestionUsuario"),
    url(r'^gestionUsuarioAdmin/$',views.gestionarUsuarioAdmin,name="gestionUsuarioAdmin"),
    url(r'^login/$',views.ingresar,name="login"),
    url(r'^logout/$',views.salir,name="logout"),
    url(r'^index/$',views.user_logged,name="user_logged"),
    url(r'^password_restaurar/$',auth_views.PasswordResetView.as_view(
            template_name='password_reset.html',
            email_template_name='password_email.html',
            ),name='password_reset',),
    url(r'^password_restaurar/done/$',auth_views.PasswordResetDoneView.as_view(
            template_name='password_reset_done.html',
            ),name='password_reset_done',
            ),
    url(r'^password_restaurar/done/(?P<uidb64>[0-9A-Za-z]+)-(?P<token>.+)/$',
                #[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20}
        auth_views.PasswordResetConfirmView.as_view(
                success_url=reverse_lazy('password_reset_complete'),
                post_reset_login=True,
                template_name='password_reset_confirm.html',
                post_reset_login_backend=('django,contrib.auth.backend.AllowAllUsersModelBackend'),
                ),name='password_reset_confirm',
        ),
    url(r'^password_restaurar_complete', auth_views.PasswordResetCompleteView.as_view(
           template_name='password_reset_complete.html',
           ),name='password_reset_complete',
           ),
]
