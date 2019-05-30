
Para ejecutar la generacion de usuarios y configuracion.
xargs --arg-file=usuarios_tlapape.txt  ./crear_usuarios.sh| 
En donde usuarios_tlapape.txt contiene los usuarios y configuraciones.



docker cp /home/dockeradm/data/BuildScript/scripts/crear_usuarios.py $(docker-compose ps -q tlapape ):/app/tlapape
docker cp /home/dockeradm/data/BuildScript/scripts/categoria_paciente0.py $(docker-compose ps -q tlapape ):/app/tlapape
docker cp /home/dockeradm/data/BuildScript/scripts/recargas.py $(docker-compose ps -q tlapape ):/app/tlapape

 
docker exec $(docker-compose ps -q tlapape) sh -c './manage.py  shell< /app/tlapape/crear_usuarios.py
docker exec $(docker-compose ps -q tlapape) sh -c './manage.py  shell< /app/tlapape/categoria_paciente0.py'
docker exec $(docker-compose ps -q tlapape) sh -c './manage.py  shell< /app/tlapape/recargas.py'


