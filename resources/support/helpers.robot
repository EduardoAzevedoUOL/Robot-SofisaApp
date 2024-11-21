*** Settings ***
Documentation   Este arquivo contém keywords de helper para serem utilizadas nos testes.

Resource    ./base.robot    # robotcode: ignore

*** Variables ***
${KEYCODE_0}       7
${KEYCODE_1}       8
${KEYCODE_2}       9
${KEYCODE_3}       10
${KEYCODE_4}       11
${KEYCODE_5}       12
${KEYCODE_6}       13
${KEYCODE_7}       14
${KEYCODE_8}       15
${KEYCODE_9}       16

*** Keywords ***
Rolar para baixo ate o elemento
    [Arguments]    ${element}
    ${visible}=  Run Keyword And Return Status    Element Should Be Visible    ${element}
    WHILE  ${visible} == False
        Swipe    500    1000    400    100
        ${visible}=  Run Keyword And Return Status    Element Should Be Visible    ${element}
    END

Rolar para baixo ate o texto
    [Arguments]    ${text}
    ${visible}=  Run Keyword And Return Status    Text Should Be Visible   ${text}
    WHILE  ${visible} == False
        Swipe    500    1000    400    100
        ${visible}=  Run Keyword And Return Status    Wait Until Page Contains     ${text}K
    END

Calcular o centro do elemento
    [Arguments]    ${element}
    ${RECT}=                    Get Element Rect        ${element}
    ${height}=                  Evaluate    ${RECT['height']} / 2
    ${Y}=                       Evaluate    ${RECT['y']} + ${height}
    ${Y_offs}=                  Evaluate    ${RECT['y']} * 0.05
    ${Y}=                       Evaluate    ${Y} + ${Y_offs}
    RETURN                      ${RECT['x']}    ${Y}

Digitar o código de segurança
    [Arguments]    ${cognito_code}
    Log To Console      O código: ${cognito_code}
    ${length}    Get Length    ${cognito_code}
    FOR    ${index}    IN RANGE    0    ${length}
        ${digit}    Get Substring    ${code}    ${index}    ${index+1}
        ${keycode_name}    Set Variable    KEYCODE_${digit}
        ${keycode_value}    Get Variable Value    ${${keycode_name}}
        Press Keycode    ${keycode_value}
    END
 


 

 