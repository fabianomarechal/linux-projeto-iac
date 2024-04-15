#!/bin/bash

# Excluir usuários e diretórios existentes
userdel -r carlos 2> /dev/null
userdel -r maria 2> /dev/null
userdel -r joao_ 2> /dev/null
userdel -r debora 2> /dev/null
userdel -r sebastiana 2> /dev/null
userdel -r roberto 2> /dev/null
userdel -r josefina 2> /dev/null
userdel -r amanda 2> /dev/null
userdel -r rogerio 2> /dev/null

groupdel GRP_ADM 2> /dev/null
groupdel GRP_VEN 2> /dev/null
groupdel GRP_SEC 2> /dev/null

rm -rf /publico /adm /ven /sec

# Criar diretórios
mkdir /publico /adm /ven /sec

# Criar grupos de usuários
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criar usuários e adicionar ao grupo correspondente
useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao_ -m -s /bin/bash -G GRP_ADM

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

# Definir o dono dos diretórios
chown root:root /publico /adm /ven /sec

# Definir permissões dos diretórios
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

# Definir permissões específicas por grupo
chgrp GRP_ADM /adm
chgrp GRP_VEN /ven
chgrp GRP_SEC /sec
