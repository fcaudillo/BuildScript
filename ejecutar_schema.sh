docker run --network=main_default   -it --rm -v ~/data/BuildScript/scripts:/scripts jbergknoff/postgresql-client postgresql://$USUARIO_DB:$PASSWORD_DB@dbtpv:5432/dbtpv -f  /scripts/create_schema_$1.sql
 
