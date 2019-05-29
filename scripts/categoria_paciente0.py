
from precios.models import Categoria,TipoMovimiento

TipoMovimiento.objects.create(codigo='INV',description = 'INVENTARIO', factor =1,factor_conta =1, prioridad = 1)
TipoMovimiento.objects.create(codigo='COM',description = 'COMPRA', factor =1,factor_conta =1, prioridad = 2)
TipoMovimiento.objects.create(codigo='VTA',description = 'VENTA', factor =-1,factor_conta =-1, prioridad = 3)
TipoMovimiento.objects.create(codigo='DEV',description = 'DEVOLUCION', factor =1,factor_conta =1, prioridad = 4)
TipoMovimiento.objects.create(codigo='MER',description = 'MERMA', factor =-1,factor_conta =-1, prioridad = 5)
TipoMovimiento.objects.create(codigo='PER',description = 'USO PERSONAL', factor =-1,factor_conta =-1, prioridad = 6)
TipoMovimiento.objects.create(codigo='PRO',description = 'DEVOLUCION PROVEEDOR', factor =-1,factor_conta =-1, prioridad = 7)
TipoMovimiento.objects.create(codigo='MOD',description = 'MODIFCACION DE PRODUCTOS', factor =0,factor_conta =0, prioridad = 0)
TipoMovimiento.objects.create(codigo='TAE',description = 'VENTA TIEMPO AIRE', factor =0,factor_conta =1, prioridad = 0)

raiz = Categoria.objects.create(codigo='UNK', description='Raiz')
categoria1 = Categoria.objects.create(codigo='PAP', description='PAPELERIA', parent = raiz)
categoria2 =Categoria.objects.create(codigo='TLA', description='TLAPALERIA', parent = raiz)
categoria3 = Categoria.objects.create(codigo='BELL', description='BELLEZA', parent = raiz)
cat_tae = Categoria.objects.create(codigo='TAE', description='Recarga de tiempo aire', parent = categoria1)