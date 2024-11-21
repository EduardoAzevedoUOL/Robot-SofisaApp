# Support Folder Infos
Arquivo com informações sobre a organização da pasta "support".

## Glue (base.robot)
O arquivo base.robot contém a lógica para subida dos drivers Appium e chamada das bibliotecas auxiliares ao código

## Config (environment variables)
A pasta config conta com arquivos JSON para facilitar a configuração específica por ambiente, imagine a execução dos testes automatizados em DEV, QA, HML, UAT, PREPROD, PROD, etc. A ideia destas configurações é facilitar através de data-driven as configurações específicas por ambiente mas reaproveitando toda a estrutura dos testes e das ações do projeto.

## Massas de dados (factory)
A pasta factory contém as massas de dados estáticas em arquivos JSON, separadas por ambiente e por sistema operacional (Android e iOS), para o uso de massas específicas por ambiente. Para chamar as massas de dados estáticas, é possível utilizar o arquivo static.robot com as keywords customizadas para este fim.

A pasta factory também conta com o arquivo dynamic.robot, que possibilita o uso do Faker ou de Keywords customizadas para poder gerar massas de dados dinâmicas durante a execução dos testes.

## CustomKeywords
O arquivo helpers.md e o arquivo CustomKeywords.py contam com keywords customizadas, seja em Robot Framework com uma lógica mais acurada para a execução de ações específicas ou via Python para possibilitar o uso de bibliotecas auxiliares e uma lógica mais aprofundada.
