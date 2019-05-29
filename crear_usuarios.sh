sed -i -e 's/$ADMIN_USER/$1/gI' \
    -e 's/$ADMIN_PASS/$2/gI' \
    -e 's/$CAJERO_USER/$3/gI' \
    -e 's/$CAJERO_PASS/$4/gI' \
    -e 's/$TAE_USER/$5/gI' \
    -e 's/$TAE_PASS/$6/gI' \
    -e 's/$CLIENTE_NOMBRE/$7/gI' \
    -e 's/$CLIENTE_GIRO/$8/gI' \
    -e 's/$TICKET_PIE/$9/gI' \
    -e 's/$ADMIN_USER/$10/gI' crear_usuarios.template > ./scripts/crear_usuarios.py
