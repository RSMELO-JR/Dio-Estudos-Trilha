#!/bin/bash

echo "Adicionando novos usuários no Sistema. Aguarde ..."

useradd carlos -c "Carlos Alves" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria Alves" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "Joao Alves" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -c "Debora Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -s /bin/bash -m  -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto Silva" -s /bin/bash -m  -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c "Josefina Lima" -s /bin/bash -m  -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda Lima" -s /bin/bash -m  -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Lima" -s /bin/bash -m  -p $(openssl passwd Senha123) -G GRP_SEC

echo "Finalizado!"

