*** Settings ***
Documentation           Arquivo com cenários da funcionalidade da home

Resource        ../resources/support/base.robot    # robotcode: ignore

Test Setup      Abrir App
Test Teardown   Fechar App

*** Test Cases ***
CT_001: Validar a tela de beneficios
    [Tags]                  OPEN_FINANCE              REGRESSAO
    Abrir App

    
    
 
    