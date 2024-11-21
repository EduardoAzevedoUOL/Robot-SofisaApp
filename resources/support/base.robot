*** Settings ***
Library             OperatingSystem
Library             CustomKeywords.py

Resource        ./helpers.robot
Resource        ../actions/_elements/${APP_OS}/common_elements.robot
Resource        ../actions/_elements/${APP_OS}/login_elements.robot
Resource        ../actions/_elements/${APP_OS}/home_elements.robot
Resource        ../actions/_elements/${APP_OS}/OPB_elements.robot
Resource        ../actions/autenticacao/login_actions.robot
Resource        ../actions/home/home_actions.robot
Resource        ../actions/OPB/OPB_actions.robot
Resource        ./factory/dynamic.robot
Resource        ./factory/static.robot

*** Variables ***
${GLOBAL_TIMEOUT}           10
${APP_OS}                   android
${ENVIRONMENT}              hml
${EXEC_ENV}                 local
${BS_USER}                  bs_user
${BS_KEY}                   bs_key
${BS_APP}                   bs_app
${PLATFORM_VERSION}         10.0
${DEVICE_NAME}              Samsung Galaxy S20 Plus

*** Keywords ***

Abrir App
    IF  "${EXEC_ENV}" == "local"
        IF  "${APP_OS}" == "android"
            Abrir App Local Android
        ELSE
            Abrir App Local iOS
        END
    ELSE
        IF  "${APP_OS}" == "android"
            Abrir App BS Android
        ELSE
            Abrir App BS iOS
        END
    END
    
Abrir App Local iOS
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=XCUITest
    ...                 platformName=iOS
    ...                 deviceName=CelularzinhoRico
    ...                 app=${EXECDIR}/app/${APP_OS}/app.ipa

Abrir App Local Android
   #Open Application    http://localhost:4723/wd/hub
    Open Application    http://localhost:4723
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Celularzinho
    ...                 app=${EXECDIR}/app/${APP_OS}/app.apk
    #...                 udid=emulator-5554

Abrir App BS Android
    Open Application    http://${BS_USER}:${BS_KEY}@hub-cloud.browserstack.com/wd/hub
        ...    automationName=UiAutomator2
        ...    browserstack.debug=true
        ...    browserstack.appiumLogs=true
        ...    platformName=Android
        ...    platformVersion=${PLATFORM_VERSION}
        ...    deviceName=${DEVICE_NAME}
        ...    buildName=Android-Build-v.version1example
        ...    app=${BS_APP}

Abrir App BS iOS
    Open Application    http://${BS_USER}:${BS_KEY}@hub-cloud.browserstack.com/wd/hub
    ...    automationName=XCUITest
    ...    browserstack.debug=true
    ...    browserstack.appiumLogs=true
    ...    platformName=iOS
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    buildName=iOS-Build-v.version1example
    ...    autoAcceptAlerts=true
    ...    hideKeyboard=true
    ...    app=${BS_APP}

Fechar App
    Capture Page Screenshot
    Close Application

Ler configuracao ambiente
    [Documentation]   Facilita a utilização de configurações dinâmicas entre ambientes lidas de um arquivo JSON
    ${file_data}      Get File         ${EXECDIR}/resources/support/config/${ENVIRONMENT}.json
    ${data}           Evaluate         json.loads('''${file_data}''')             json    
    RETURN          ${data}
