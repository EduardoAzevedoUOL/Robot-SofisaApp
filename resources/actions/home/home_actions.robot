*** Settings ***
Documentation       Passos login na aplicação de exemplo SauceLabs

Resource    ../../support/base.robot    # robotcode: ignore
 
*** Keywords ***
Fazer login e seguir para a home    
    ${login_data}           Get JSON      login_data.json
    Acessar a tela de Login
    Realizar Login Com      ${login_data["valid_data"]["user"]}     ${login_data["valid_data"]["password"]}
    Validar Login Com Sucesso
    Seguir para a home