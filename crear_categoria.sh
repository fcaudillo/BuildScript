
#!/bin/bash


sed -e "s/ARG_TLAPALERIA/$2/gI" \
    -e "s/ARG_PAPELERIA/$3/gI" \
    -e "s/ARG_REGALOS/$4/gI" \
    -e "s/ARG_PLOMERIA/$5/gI" \
    -e "s/ARG_BELLEZA/$6/gI"  /BuildScript/categoria.template > /BuildScript/scripts/$1/crear_categorias.py