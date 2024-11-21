#Requisição realizada no repositorio da SauceLabs
#Ultima versão disponível: v1.3.0 

#Não se esqueca! As função realiza a requisição mas é preciso informar o diretório de destino do arquivo

import requests
import os


#CAMINHO APP ANDROID
PATH_ANDROID = '../app/android'
#CAMINHO APP IOS
PATH_IOS = '../app/ios'

URL_ANDROID = 'https://github.com/saucelabs/my-demo-app-rn/releases/download/v1.3.0/Android-MyDemoAppRN.1.3.0.build-244.apk'
URL_IOS = 'https://github.com/saucelabs/my-demo-app-rn/releases/download/v1.3.0/iOS-Real-Device-MyRNDemoApp.1.3.0-162.ipa'
APP_NAME = ['app.apk', 'app.ipa']


# funcao para realizar o download do app android e ios
def request_atualizar(path, url, app_name):
    
    url = url
    atualizacao = requests.get(url)
    app = url.split('/')[-1]    
    app = app_name
    #diretório de destino do arquivo
    with open(os.path.join(path, app), 'wb') as f:
        f.write(atualizacao.content)
    
    if atualizacao.status_code == 200:
        print('Download App concluído com sucesso!')        
    else:
        print('Erro ao realizar download!')    
    

if __name__ == '__main__':

    #chamada da função
    request_atualizar(PATH_ANDROID, URL_ANDROID, APP_NAME[0])
    request_atualizar(PATH_IOS, URL_IOS, APP_NAME[1])
