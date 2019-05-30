docker run --network=main_default   -it --rm -v /home/dockeradm/data/BuildScript:/BuildScript jbergknoff/postgresql-client postgresql://$USUARIO_ADMIN_DB:$PASSWORD_ADMIN_DB@dbtpv:5432/dbtpv -f  /BuildScript/scripts/create_schema_$1.sql

