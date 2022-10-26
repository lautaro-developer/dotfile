#!/bin/bash
echo '1-Conectarse a una red wifi'
echo '2-Borrar una red'
echo
read -p 'Selecione una opecion: ' op

if [[ $op = 1 ]]; then
  nmcli device wifi list

  echo 
  read -p " * nombre de la red: " name
  echo
  read -sp " * contraseña: " pass

  nmcli device wifi connect $name password $pass
elif [[ $op = 2 ]]; then
  echo 'dedede'
  
fi

