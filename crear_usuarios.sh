
sed -e "s/ARG_ADMIN_USER/$1/gI" \
    -e "s/ARG_ADMIN_PASS/$2/gI" \
    -e "s/ARG_CAJERO_USER/$3/gI" \
    -e "s/ARG_CAJERO_PASS/$4/gI" \
    -e "s/ARG_TAE_USER/$5/gI" \
    -e "s/ARG_TAE_PASS/$6/gI" \
    -e "s/ARG_CLIENTE_NOMBRE/$7/gI" \
    -e "s/ARG_CLIENTE_GIRO/$8/gI" \
    -e "s/ARG_CLIENTE_DIRECCION/$9/gI"  \
    -e "s/ARG_TICKET_PIE/${10}/gI" crear_usuarios.template > ./scripts/crear_usuarios.py
 
