*** Variables ***
${SITE}                           https://chicorei.com/
${NAVEGADOR}                      Chrome 
${COOKIES}                        css=#confirmPolicyButton
${CAMPO_PESQUISAR1}               css=#header-search-desktop > form > div > div > div > div:nth-child(1)
${CAMPO_PESQUISAR2}               css=#header-search-desktop > form > div > div > div > div:nth-child(1)
${ESCOLHA_01}                     css=#header-search-desktop > form > div > div > div > div:nth-child(1) > div > div:nth-child(2) > div.product-list-item-price > span
${VALOR_PRODUTO}                  css=#product-main-right > div:nth-child(1) > div.product-price.text-yanone > div > p.h2.text-accent.mx-0.my-0.mr.flex-child-fixed.text-bold
${TAMANHO_PRODUTO}                css=#product-variations > div.text-yanone > div > div:nth-child(4) > nav > div:nth-child(3)
${COR_01}                         css=#product-variations > div.text-yanone > div > div:nth-child(6) > nav > div:nth-child(2) > div
${COR_02}                         css=#product-variations > div.text-yanone > div > div:nth-child(5) > nav > div:nth-child(5) > div
${COMPRAR}                        css=#product-buy-button-container > button > span:nth-child(2)
${VER_SACOLA}                     css=#header-cart-popover > div > div.text-center > a.btn.btn-lg.mb
${FIDELIDADE}                     css=#cart-loyalty > img
${FRETE_PRIME}                    css=#cart-prime > p
${FINALIZAR}                      css=#cart-finish > button.btn.btn-xl.btn-wide.mt.hidden-xs-down





*** Keywords ***
Abrir o site do Chico
  Open Browser                      ${SITE}                 ${NAVEGADOR}
Clicar em "Concordar" no aviso sobre Cookies
  Click Element                     ${COOKIES}
Pesquisar por "Vira lata caramelo" e selecionar a primeira opção da lista de resultados
  Input Text                        ${CAMPO_PESQUISAR1}     Vira lata caramelo
  Input Text                        ${CAMPO_PESQUISAR2}     Amarelo é Desespero
  Input Text                        ${CAMPO_PESQUISAR2}     Amarelo é Desespero
  Click Element                     ${ESCOLHA_01} 
Validar se o valor do produto é "R$ 69,90"
  Element Should Contain            ${VALOR_PRODUTO}        69,90
Selecionar um tamanho, cor e clicar em comprar
  Click Element                     ${TAMANHO_PRODUTO}      ${COR_01}       ${COR_02}
  Click Element                     ${COMPRAR}
Clicar em "Ver sacola"
  Click Element                     ${VER_SACOLA}
Validar se a mensagem "VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!" está sendo exibida
  Page Should Contain               ${FIDELIDADE}           VOCÊ ESTÁ ACUMULANDO 2 PONTOS NO CARTÃO FIDELIDADE! 
Validar se a mensagem "Adquira o Chico Rei Prime" está sendo exibida
  Page Should Contain               ${FRETE_PRIME}          Adquira o Chico Rei Prime  
Clicar em "Fechar pedido"
  Click Element                     ${FINALIZAR}





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