


#run file .py

echo "rodando..."



while true; do
    echo "Acessando a pasta script"
    cd script
    echo "Selecione uma opção:"
    echo "1 - Instalar dependencias do projeto"
    echo "2 - Atualizar a aplicativo exemplo"
    echo "3 - Enviar aplicativo para o BrowserStack"
    echo "4 - Sair"
    read -p "Digite o numero da opção: " opcao

    clear

    case $opcao in
        1)  
            
            pwd             
            echo "Atenção! As dependências que serão instaladas são:

            - robotframework 
            - robotframework-appiumlibrary
            - robotframework-faker

            Se você já tem o pip e as dependências instaladas, elas serão atualizadas.

            Ultimas versões testadas:

                robotframework               6.0.1
                robotframework-appiumlibrary 2.0.0
                robotframework-faker         5.0.0
                pip                          22.3.1       
            
            "
            
            read -p "Deseja continuar? (s/n): " opcao
            case $opcao in
                s)
                    echo "Continuando..."
                    echo "Instalando dependencias do projeto"
                    
                    pip install --upgrade pip
                    pip install -r requirements.txt --upgrade
                    #time delay
                    sleep 2
                    #clear screen
                    clear
                    
                    ;;
                n)
                    echo "Saindo..."                    
                    sleep 2
                    clear
                    ;;
                
                *)
                    echo "Opção invalida"
                    sleep 2
                    clear
                    ;;
                 
            esac            
            cd ..
            ;;
        2)  
            
            pwd
            echo "Atualizando aplicativos com as versões mais recentes..."
            echo "Atenção! Os aplicativos IOS e Android serão atualizados com as versões mais recentes no repositório da SauceLabs.

            Ultima versão testada: 1.3.0
            
            Não se esqueça de atualizar o PATH do script app_atualizacao.py com o caminho local do seu projeto.
            "
            read -p "Deseja continuar? (s/n): " opcao

            case $opcao in
                s)
                    echo "Continuando..."
                    echo "Atualizando aplicativos"                    
                    python3 app_atualizacao.py
                    #time delay
                    sleep 2
                    #clear screen
                    clear                                  
                    
                    ;;
                n)
                    echo "Saindo..."
                    sleep 2
                    clear
                    ;;

                *)
                    echo "Opção invalida"
                    sleep 2
                    clear
                    ;;
            esac
            
            cd ..
            ;;
        3)  
            
            pwd
            echo "Enviando aplicativo para o BrowserStack..."
            echo "Atenção! O aplicativo IOS e Android serão enviados para o BrowserStack.

            Não se esqueça de atualizar o PATH do seu aplicativo e o seus dados usuário e chave no script app_browserstack.py."

            read -p "Deseja continuar? (s/n): " opcao

            case $opcao in
                s)
                    echo "Continuando..."
                    echo "Enviando aplicativo"                    
                    python3 app_browserstack.py
                    
                    #time delay
                    sleep 2
                    #clear screen
                    clear
                    
                    ;;
                n)
                    echo "Saindo..."
                    sleep 2
                    clear
                    ;;

                *)
                    echo "Opção invalida"
                    sleep 2
                    clear
                    ;;
            esac
            
            cd ..
            ;;
        4)
            echo "Saindo..."
            exit
            ;;

    esac
done




