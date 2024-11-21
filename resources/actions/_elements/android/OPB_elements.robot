*** Settings ***
Documentation           Arquivo com os elementos da screen de login

*** Variables ***
## --- Tela de onboarding
${btn_voltar}                  id=left-icon
${txtView_compartilDados}      id=header-title
${btn_faq}                     id=help-button
${btn_trazerDados}             accessibility_id=Trazer dados
${img_beneficiosOpb}           xpath=//android.widget.ImageView

## --- Tela de compartilhamento dedos
${lbl_busca}                   id=select-institution-search-input
${btn_infoInstituicao}         xpath=(//android.view.ViewGroup[@resource-id="item-institution-info-icon"])[1]


####  Tela de onboarding  ------- 

# Conheça os benefícios do Open Finance

# Aumente sua chances de obter crédito para produtos e investimentos;

# Conhecendo seu comportamento financeiro, o Sofisa Direto pode apresentar melhores ofertas para você;

# É gratuito e seguro, sendo regulado pelo Banco Central do Brasil, oferecendo mais produtos de crédito para você!


####  Tela de Compartilhamento ------- 

# Escolha a instituição de onde quer trazer seus dados

# Não encontrou sua instituição? Utilize nossa busca para encontrar a instituição que deseja.