echo "CREATE USER adm_$1 WITH LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE;" > ./scripts/create_schema_$1.sql
echo "CREATE SCHEMA $1 AUTHORIZATION adm_$1;" >> ./scripts/create_schema_$1.sql
echo "ALTER USER adm_$1 SET search_path = $1, public;" >> ./scripts/create_schema_$1.sql
echo "ALTER USER adm_$1 WITH PASSWORD '$2';" >> ./scripts/create_schema_$1.sql
echo "GRANT CONNECT ON DATABASE dbtpv TO adm_$1;" >> ./scripts/create_schema_$1.sql
echo "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA $1 TO adm_$1;" >> ./scripts/create_schema_$1.sql
echo "GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA $1 TO adm_$1;" >> ./scripts/create_schema_$1.sql
