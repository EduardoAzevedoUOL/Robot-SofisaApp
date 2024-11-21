*** Settings ***
Documentation       Passos login na aplicação de exemplo SauceLabs

Resource    ../../support/base.robot    # robotcode: ignore

*** Keywords ***
Acessar a tela de Login
    Wait Until Page Contains Element        ${btn_ja_tenho_conta}
    Click Element                           ${btn_ja_tenho_conta} 

Realizar Login Com
    [Arguments]                             ${user}                    ${password}
    Wait Until Page Contains Element        ${input_username}          ${GLOBAL_TIMEOUT}
    Click Element                           ${input_username} 
    Input Text                              ${input_username}          ${user}
    Input Text                              ${input_password}          ${password}
    Hide Keyboard
    Click Element                           ${btn_continuar} 

Validar Login Com Sucesso
    Page Should Contain Text                Atendemos o seu pedido

Validar Login Invalido
    Page Should Contain Text                Provided credentials do not match any user in this service.

Validar Login Sem Usuario
    Page Should Contain Text                Username is required

Validar Login Sem Senha
    Page Should Contain Text                Password is required

Seguir para a home
    Click Element                           ${btn_pular}
    Click Element                           ${btn_seguir_nova_home}