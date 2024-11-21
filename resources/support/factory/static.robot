*** Settings ***
Documentation           Fábrica de Dados Estáticos

Library                 OperatingSystem
Resource              ../base.robot

*** Keywords ***
Load Static Users Data
    [Documentation]        Utilizado na Suite Setup quando dados estáticos são necessários
    ${static_users}        Run Keyword             Get JSON            users_data
    Run Keyword            Set Global Variable     ${static_users}

Get JSON
    [Arguments]         ${file_name}
    ${file_data}        Get File            ${EXECDIR}/resources/support/factory/static/${ENVIRONMENT}/${APP_OS}/${file_name}
    ${data}             Evaluate            json.loads($file_data)           json
    RETURN              ${data}
