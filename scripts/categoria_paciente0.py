
from precios.models import Categoria

raiz = Categoria.objects.create(codigo='UNK', description='Raiz')
categoria1 = Categoria.objects.create(codigo='PAP', description='PAPELERIA', parent = raiz)
categoria2 =Categoria.objects.create(codigo='TLA', description='TLAPALERIA', parent = raiz)
categoria3 = Categoria.objects.create(codigo='BELL', description='BELLEZA', parent = raiz)
cat_tae = Categoria.objects.create(codigo='TAE', description='Recarga de tiempo aire', parent = categoria1)