#!/bin/bash

if [ $# -ne 3 ]; then
  echo "Uso adequado: $0 <APP_OS> <EXEC_ENV> <ENVIRONMENT>"
  exit 1
fi

echo "Configurações de execução:"
echo "APP_OS: $1"
echo "EXEC_ENV: $2"
echo "ENVIRONMENT: $3"

echo "##################################"
echo "########executando...#############"
echo "##################################"

robot -v APP_OS:$1 -v EXEC_ENV:$2 -v ENVIRONMENT:$3 -d ./reports tests
