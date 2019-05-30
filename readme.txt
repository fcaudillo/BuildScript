
Tareas  a realizar para levantar un negocio:

a)Ejecutar el script crear_schema.sh para crear el escquem  y usuarios para que se conecte a la base de datos.
b)Modificar el docker-compose  para que  se incluya el subdomino y genere la instancia tlapape para el nuevo negocio.
 



Esta script  crea lo siguiente:
a) crear el esquema "esquema parametro de la  linea de comando"
b) crear el usuario adm_esqumea y su password
c) crear el archivo ejecutable create_schema_"esquema".sh listo para ejecutarse.

./crear_schema.sh esquema password

Para ejecutar el script de creacion del esqueqma
./ejecutar_schema.sh paciente0


Para ejecutar la generacion de usuarios y configuracion.
xargs --arg-file=usuarios_tlapape.txt  ./crear_usuarios.sh| 
En donde usuarios_tlapape.txt contiene los usuarios y configuraciones.



docker cp /home/dockeradm/data/BuildScript/scripts/crear_usuarios.py $(docker-compose ps -q tlapape ):/app/tlapape
docker cp /home/dockeradm/data/BuildScript/scripts/categoria_paciente0.py $(docker-compose ps -q tlapape ):/app/tlapape
docker cp /home/dockeradm/data/BuildScript/scripts/recargas.py $(docker-compose ps -q tlapape ):/app/tlapape

 
docker exec $(docker-compose ps -q tlapape) sh -c './manage.py  shell< /app/tlapape/crear_usuarios.py
docker exec $(docker-compose ps -q tlapape) sh -c './manage.py  shell< /app/tlapape/categoria_paciente0.py'
docker exec $(docker-compose ps -q tlapape) sh -c './manage.py  shell< /app/tlapape/recargas.py'


