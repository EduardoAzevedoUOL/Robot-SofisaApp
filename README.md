# Automação de Testes Mobile com Appium

## Ambiente de Desenvolvimento Local
Abaixo é explicado os detalhes das tecnologias e configuração de ambiente para implementação dos testes com execução multi-ambientes e multi-dispositivos.

### Tecnologias

Você vai precisar das seguintes ferramentas e tecnologias:

- [Python](https://www.python.org/downloads/)
- [Node.js](https://nodejs.org/en/)
- [Java JDK8](http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html)
- [Android Studio](https://developer.android.com/studio/index.html?hl=pt-br)
- [Appium](http://appium.io/downloads.html)
- [Robot Framework](https://robotframework.org/)

###  Ferramentas

Você pode baixar e instalar o JDK 8 através [desse link](http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html).

Android Studio é a IDE oficial para desenvolvimento e testes de aplicativos para Android
Você pode baixar a ultima através [desse link](https://developer.android.com/studio/index.html?hl=pt-br)

###  Variáveis de ambiente

#### No Linux ou Mac

Configure as seguintes váriávies de ambiente no **bash_profile** ou **zshrc** do seu Linux ou Mac:

```bash
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export ANDROID_HOME=~/Library/Android/sdk

PATH=$PATH:$ANDROID_HOME/platform-tools
PATH=$PATH:$ANDROID_HOME/tools
PATH=$PATH:$ANDROID_HOME/tools/bin
PATH=$PATH:$ANDROID_HOME/tools/lib
PATH=$PATH:$JAVA_HOME/bin
```

Para ZSH, execute o comando:

```bash
source ~/.zshrc
```

Para Bash, execute o comando:

```bash
source ~/.bashrc
```

#### No Windows

[![Audi R8](.github/windows.png)](https://youtu.be/ZsOq4xoTid0 "Variáveis de ambiente no Windows")


### Appium 

- Com o Node.js instalado, execute:

  | Se estiver no Windows, execute no Prompt como Administrador

```bash
npm install -g appium
npm install -g appium-doctor
```

- Em seguida, execute:

```bash
appium-doctor --android
```

- Deve aprensentar um resultado similar ao da imagem abaixo:


### Appium Desktop

Instale o Appium Desktop Latest release (não faça download do Pre-release)


# Bibliotecas & Execução dos Testes
Abaixo é explicado em mais detalhes as bibliotecas utilizadas para possibilitar automação Mobile, assim como o funcionamento da execução por linha de comando.

## Bibliotecas
Bibliotecas existentes no projeto hoje:
- robotframework
- robotframework-appiumlibrary
- robotframework-faker
- requests
- robotframework-jsonlibrary
- robotframework-requests

## Como executar?

### Subindo ambiente local
- Abra o Appium Desktop e clique em Start Server;
- Acesse a pasta do projeto;
- Instale o Robot e a Lib do Appium conforme descrito na [doc](https://robotframework.org/);
- Para instalar as dependências do projeto após todo ambiente estar configurado, execute `pip install -r requirements.txt`

### Executando localmente
- Android: Execute o comando `robot -v APP_OS:android -v EXEC_ENV:local -v ENVIRONMENT:<environment - hml ou preprod> -d ./reports tests`;
- iOS: Execute o comando `robot -v APP_OS:ios -v EXEC_ENV:local -v ENVIRONMENT:<environment - hml ou preprod> -d ./reports tests`;

### Executando no BrowserStack
- Android: Execute o comando `robot -v APP_OS:android -v EXEC_ENV:bs -v ENVIRONMENT:<environment - hml ou preprod> -d ./reports tests`;
- iOS: Execute o comando `robot -v APP_OS:ios -v EXEC_ENV:bs -v ENVIRONMENT:<environment - hml ou preprod> -d ./reports tests`;

### Usando o Script run.sh
Execute no terminal:
```
sh run.sh <APP_OS> <EXEC_ENVIRONMENT> <ENVIRONMENT>
```
Altere <APP_OS> para android ou ios, altere <EXEC_ENVIRONMENT> para local ou bs e altere <ENVIRONMENT> para hml ou preprod, por padrão as execuções sem parâmetro irão executar em android, local e hml.

## Criando novos testes automatizados
Para a criação de novos testes automatizados, deve ser feito o link com o Test Scenario e Test Case do Jira, seguindo o seguinte exemplo:
<ID_TEST_SCENARIO_JIRA>_<ID_TEST_CASE>: <NOME_TESTE>
Desta forma, o teste automatizado sempre terá o link com o Test Scenario e Test Case que levaram à sua criação.

---


set BS_USER=browserstackapp_GCAydh
set BS_KEY=cSU9aWXpdnEFYPnXmxjd
set BS_APP=bs://f56421b494a1473eed066371229382ed35d23f15# robot-appium-mobile
