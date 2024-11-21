*** Settings ***
Documentation           Arquivo com os elementos da screen de login

*** Variables ***
${input_username}           xpath=//android.widget.EditText[@resource-id="email-input"]      
${input_password}           xpath=//android.widget.EditText[@resource-id="password-input"]     
${btn_continuar}            accessibility_id=Continuar 
${btn_salvar_usuario}       id=toggle-container
${btn_abrir_conta}          accessibility_id=Abrir Conta
${btn_ja_tenho_conta}       accessibility_id=Já tenho uma conta