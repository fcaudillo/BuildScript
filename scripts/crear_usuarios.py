from django.contrib.auth.models import User,Group
from precios.models import Categoria,TipoMovimiento, Compania, Plan, Producto, Configuracion
import datetime
from django.contrib.auth.models import User
admin=User.objects.create_user('fcaudillo', password='q1w2e3r4')
admin.is_superuser=True
admin.is_staff=True
admin.save()

Configuracion.objects.all().delete()
Configuracion.objects.create(clave="CLIENTE_NOMBRE",valor="Fantasy S.A")
Configuracion.objects.create(clave="CLIENTE_GIRO", valor="Papeleria y Regalos")
Configuracion.objects.create(clave="CLIENTE_DIRECCION",valor="Lago ginebra #102 col. Pirules")
Configuracion.objects.create(clave="TICKET_PIE",valor='Gracias por su compra')
Configuracion.objects.create(clave="TAE_USUARIO",valor='Demo")
Configuracion.objects.create(clave="TAE_PASSWORD",valor="q1w2e3r4)

g_cajero = Group.objects.create(name='Cajero')
g_master = Group.objects.create(name='Master')

cajero = User.objects.create_user(username='cajero1', password='q1w2e3r4')
g_cajero.user_set.add(cajero)
g_master.user_set.add(admin)
