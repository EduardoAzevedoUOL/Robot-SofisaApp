*** Settings ***
Documentation           Arquivo com cenários da funcionalidade de Autenticacao

Resource        ../resources/support/base.robot    # robotcode: ignore

Test Setup      Abrir App
Test Teardown   Fechar App

*** Test Cases ***
CT_001: Realizar Login Com Sucesso
    [Tags]                  LOGIN_VALIDO              REGRESSAO
    ${login_data}           Get JSON      login_data.json
    Acessar a tela de Login
    Realizar Login Com      ${login_data["valid_data"]["user"]}     ${login_data["valid_data"]["password"]}
    Validar Login Com Sucesso
    Seguir para a home

# CT_002: Realizar Login Invalido
#     [Tags]                  LOGIN_INVALIDO          REGRESSAO
#     ${login_data}           Get JSON      login_data.json
#     Acessar a tela de Login
#     Realizar Login Com      ${login_data["invalid_data"]["user"]}     ${login_data["invalid_data"]["password"]}
#     Validar Login Invalido

# CT_002: Realizar Login Sem Usuario
#     [Tags]                  LOGIN_SEM_USUARIO       REGRESSAO
#     ${login_data}           Get JSON      login_data.json
#     Acessar a tela de Login
#     Realizar Login Com      ${login_data["empty_data"]["user"]}     ${login_data["valid_data"]["password"]}
#     Validar Login Sem Usuario

# CT_004: Realizar Login Sem Senha
#     [Tags]                  LOGIN_SEM_SENHA         REGRESSAO
#     ${login_data}           Get JSON      login_data.json
#     Acessar a tela de Login
#     Realizar Login Com      ${login_data["valid_data"]["user"]}     ${login_data["empty_data"]["password"]}
#     Validar Login Sem Senha

    