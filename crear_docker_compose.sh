sed -e "s/ARG_CLIENTE_ID/$1/gI" \
    -e "s/ARG_PASSWORD_DB/$2/gI" /BuildScript/crear_docker_compose.template > /BuildScript/scripts/$1/main/docker-compose.yml