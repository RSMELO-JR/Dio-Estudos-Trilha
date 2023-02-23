#!/bin/bash

echo "Adicionando diretórios. Aguarde ..."

mkdir /Publico
mkdir /Adm
mkdir /Ven
mkdir /Sec

echo "Adicionando grupos de usuários. Aguarde ..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários. Aguarde ..."
useradd carlos -c "Carlos Alves" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria Alves" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "Joao Alves" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -c "Debora Silva" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -s /bin/bash -m  -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto Silva" -s /bin/bash -m  -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c "Josefina Lima" -s /bin/bash -m  -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda Lima" -s /bin/bash -m  -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Lima" -s /bin/bash -m  -p $(openssl passwd Senha123) -G GRP_SEC


echo "Especificando as permissões dos diretórios. Aguarde ..."
chown root:GRP_ADM /Adm
chown root:GRP_VEN /Ven
chown root:GRP_SEC /Sec

chmod 770 /Adm
chmod 770 /Ven
chmod 770 /Sec
chmod 777 /Publico

echo "Finalizado ...."
