*** Settings ***
Documentation           Arquivo com cenários da funcionalidade da home

Resource        ../resources/support/base.robot    # robotcode: ignore

Test Setup      Abrir App
Test Teardown   Fechar App

*** Test Cases ***
CT_001: Acessar o Open Finance
    [Tags]                  OPEN_FINANCE              REGRESSAO
    Fazer login e seguir para a home

    
    
 
    