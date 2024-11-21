*** Settings ***
Documentation           Fábrica de Dados Dinâmicos

Library                 FakerLibrary        locale=pt_BR
Resource                ../base.robot    # robotcode: ignore

*** Keywords ***
Generate Email and Password
    ${email_dinamico}       FakerLibrary.Email
    ${senha_dinamica}       FakerLibrary.Password   length=10

    RETURN    ${email_dinamico}   ${senha_dinamica}

Generate Data For User Registration
    ${email}              FakerLibrary.Email
    ${password}           FakerLibrary.Password       length=10
    ${cpf}                FakerLibrary.CPF
    ${celphone}           FakerLibrary.Phone Number
    ${name}               FakerLibrary.Name

    RETURN    ${email}    ${password}    ${cpf}    ${celphone}    ${name}
