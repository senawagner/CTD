*** Variables ***
${SITE}                 https://www.hurb.com/br
${NAVEGADOR}            Chrome 
${BOTAO_PERMITIR}       css=#CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll
${PACOTE}               css=##__next > div.Header_Header__1jiZz > div.hrc-2LOsj > div > div > div.h-rwgu8t > div > div > button.hrc-Grvo8.hrc-3hPPe.hrc-46qds.hrc-3pyBg.hrc-3zK7t.hrc-173nT
${CAMPO_PESQUISAR}      css=#destination-input 
${BOTAO_PESQUISAR}      css=##__next > div.Header_Header__1jiZz > div.hrc-2LOsj > div > div > div.h-1a7b6yy > button > span
${PACOTE_ESCOLHIDO}     css=##__next > div > main > div.ResultsCardsContainer_ResultsCardContainer__1jtiB > a:nth-child(2) > div.h-1psltl0 > img
${ESCOLHER_OPCAO}       css=body > div:nth-child(4) > section > div.box-offer-top.box-nopadding.col-sm-6.col-md-6 > div > section.box-offer-main.pull-left > div:nth-child(5) > div.pull-left.first-box > button
${COMPRAR}              css=#offer-options > div.offer-options--items > div:nth-child(9) > div > div.col-xs-12.col-sm-4.col-md-4.offer-options--box-right.main-package > div > div.col-xs-12.col-sm-7.col-md-7.offer-options--box.offer-options--box-price.flex > div:nth-child(2) > div:nth-child(4) > a
${CONFIGURACAO}         css=body > div.container > div > div.col-md-4.col-sm-4.hidden-xs > div.summary > div:nth-child(7) > div > div > div:nth-child(2) > div.col-xs-8.col-sm-8.col-md-8.text-right
${PERIODO}                           
${PAGAMENTO}            css=#ui-id-1 > span > span
${NOME_PAGADOR}         Wagner
${CPF_PAGADOR}
${CELULAR}
${OPCAO_CANCELAMENTO}   css=#purchase-confirmation > div:nth-child(1) > div > div > div.free-cancellation-policy__message



*** Keywords ***
Abrir o site Hurb
    Open Browser                ${SITE}                 ${NAVEGADOR}
Clicar em "Permitir todos os cookies"
    Click Element               ${BOTAO_PERMITIR} 
Selecionar a opção "Pacotes"
    Click Element               ${PACOTE}
Buscar por alguma cidade turística (Ex: Buenos Aires, Florença, Orlando) e clicar em "Pesquisar"
    Imput Text                  ${CAMPO_PESQUISAR}       Lisboa  
    Click Element               ${BOTAO_PESQUISAR}         
Selecionar um pacote de viagem
    Click Element               ${PACOTE_ESCOLHIDO}
Clicar em "ESCOLHER OPÇÃO"
    Click Element               ${ESCOLHER_OPCAO}
Escolher uma opção de viagem e clicar em "COMPRAR"
    Click Element               ${COMPRAR}
Validar as informações da "Configuração" da viagem
    Element Should Contain      ${CONFIGURACAO}   6 Noites\n1 pessoa por pacote
Validar as informações do período da viagem
    Element Should Contain      ${PERIODO}        ??????????
Selecionar a opção "Boleto parcelado"
    Click Element               ${PAGAMENTO}
Preencher os dados de pagamento
    Imput Text                  ${NOME_PAGADOR}
    Imput Text                  ${CPF_PAGADOR}
    Imput Text                  ${CELULAR}
Marcar o checkbox "Li e aceito as condições de termos de uso e política de privacidade"    

Validar a informação sobre cancelamento grátis
    Imput Text                  ${OPCAO_CANCELAMENTO}       Cancelamento Grátis


Wait and Click
  [Arguments]                       ${ELEMENTO}  ${TEMPO}
  Wait Until Element is Visible     ${ELEMENTO}  ${TEMPO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Scroll Element Into View          ${ELEMENTO}
  Click Element                     ${ELEMENTO}

Wait and Input Text
  [Arguments]                       ${ELEMENTO}  ${TEXTO}
  Wait Until Element is Visible     ${ELEMENTO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Scroll Element Into View          ${ELEMENTO}
  Input Text                        ${ELEMENTO}  ${TEXTO}


