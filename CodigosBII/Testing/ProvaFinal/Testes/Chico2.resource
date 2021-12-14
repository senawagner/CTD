*** Variables ***
${SITE}                           https://chicorei.com/
${NAVEGADOR}                      Chrome 
${COOKIES}                        css=#confirmPolicyButton
${CAMPO_PESQUISAR}                css=#header-search-input-desktop
${CAMPO_PESQUISAR1}               Vira lata caramelo
${CAMPO_PESQUISAR2}               Amarelo é desespero
${CAMPO_PESQUISAR3}               Erarr
${CAMPO_PESQUISAR4}               Nem te vi
${CAMPO_PESQUISAR5}               Alceu dispor
${ESCOLHA_01}                     css=#header-search-desktop > form > div > div > div > div:nth-child(1) > div > div:nth-child(2) > div.product-list-item-price > span
${VALOR_PRODUTO}                  css=#product-main-right > div:nth-child(1) > div.product-price.text-yanone > div > p.h2.text-accent.mx-0.my-0.mr.flex-child-fixed.text-bold
${PRECO}                          R$ 69,90
${TAMANHO_PRODUTO}                css=#product-variations > div.text-yanone > div > div:nth-child(4) > nav > div:nth-child(3)
${COR_01}                         css=#product-variations > div.text-yanone > div > div:nth-child(6) > nav > div:nth-child(2) > div
${COR_02}                         css=#product-variations > div.text-yanone > div > div:nth-child(5) > nav > div:nth-child(5) > div
${COR_03}                         css=#product-variations > div.text-yanone > div > div:nth-child(6) > nav > div:nth-child(3) > div
${COMPRAR}                        css=#product-buy-button-container > button > span:nth-child(2)
${VER_SACOLA}                     css=#header-cart-popover > div > div.text-center > a.btn.btn-lg.mb
${MSG_01}                         css=#cart-loyalty > p
${MSG_02}                         css=#cart-prime > p
${MSG_03}                         css=#footer-contact > div.hidden-wholesaler.mt > p:nth-child(2)
${MSG_04}                         css=#footer-advantages > div.footer-advantages-items.hidden-wholesaler > div:nth-child(2) > div
${MSG_05}                         css=#cart-prime > p
${FIDELIDADE}  VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!
${FIDELIDADE1}  Adquira o Chico Rei Prime para desfrutar de frete grátis por 1 ano em todos os pedidos, sem valor mínimo.
${FIDELIDADE2}  De segunda a sexta, das 8h às 20h.
${FIDELIDADE3}  Compre parcelado com cartão ou a vista com boleto ou depósito
${FIDELIDADE4}  Sua primeira troca na Chico Rei é por nossa conta!
${FINALIZAR}                      css=#cart-finish > button.btn.btn-xl.btn-wide.mt.hidden-xs-down





*** Keywords ***
Abrir o site do Chico
  Open Browser                      ${SITE}                 ${NAVEGADOR}
  Maximize Browser Window
  Sleep     3
Clicar em "Concordar" no aviso sobre Cookies
  Click Element                     ${COOKIES}
Pesquisar por "Vira lata caramelo" e selecionar a primeira opção da lista de resultados
  Input Text                        ${CAMPO_PESQUISAR}      ${CAMPO_PESQUISAR1}
  Wait Until Element is Visible     ${ESCOLHA_01}
  Click Element                     ${ESCOLHA_01}
Pesquisar por "Amarelo é desespero" e selecionar a primeira opção da lista de resultados
  Input Text                        ${CAMPO_PESQUISAR}      ${CAMPO_PESQUISAR2}
  Wait Until Element is Visible     ${ESCOLHA_01}
  Click Element                     ${ESCOLHA_01}
Pesquisar por "Erarr" e selecionar a primeira opção da lista de resultados
  Input Text                        ${CAMPO_PESQUISAR}      ${CAMPO_PESQUISAR3}
  Wait Until Element is Visible     ${ESCOLHA_01}
  Click Element                     ${ESCOLHA_01}
Pesquisar por "Nem Te Vi" e selecionar a primeira opção da lista de resultados
  Input Text                        ${CAMPO_PESQUISAR}      ${CAMPO_PESQUISAR4}
  Wait Until Element is Visible     ${ESCOLHA_01}
  Click Element                     ${ESCOLHA_01}
Pesquisar por "Alceu Dispor" e selecionar a primeira opção da lista de resultados
  Input Text                        ${CAMPO_PESQUISAR}      ${CAMPO_PESQUISAR5}
  Wait Until Element is Visible     ${ESCOLHA_01}
  Click Element                     ${ESCOLHA_01}   
Validar se o valor do produto é "R$ 69,90"
  Wait Until Element Is Visible     ${VALOR_PRODUTO} 
  Element Should Contain            ${VALOR_PRODUTO}        ${PRECO}       
Selecionar um tamanho, cor e clicar em comprar Vira Lata
  Wait Until Element Is Visible     ${TAMANHO_PRODUTO}           
  Click Element                     ${TAMANHO_PRODUTO}
  Click Element                     ${COR_01}
  Click Element                     ${COMPRAR}
Selecionar um tamanho, cor e clicar em comprar
  Wait Until Element Is Visible     ${TAMANHO_PRODUTO}           
  Click Element                     ${TAMANHO_PRODUTO}
  Click Element                     ${COR_01}
  Click Element                     ${COMPRAR}




# Clicar em "Ver sacola"
#   Click Element                     ${VER_SACOLA}
# Validar se a mensagem "VOCÊ ESTÁ ACUMULANDO" está sendo exibida
#   Page Should Contain               ${MSG_01}          VOCÊ ESTÁ ACUMULANDO 2 PONTOS NO CARTÃO FIDELIDADE! 
# Validar se a mensagem "Adquira o Chico Rei Prime" está sendo exibida
#   Page Should Contain               ${MSG_02}          Adquira o Chico Rei Prime  
# Validar se a mensagem "De segunda a sexta" está sendo exibida
#   Page Should Contain               ${MSG_03}          De segunda a sexta 
# Validar se a mensagem "Compre parcelado" está sendo exibida
#   Page Should Contain               ${MSG_04}          Compre parcelado com cartão 
# Validar se a mensagem "Sua primeira troca na Chico" está sendo exibida
#   Page Should Contain               ${MSG_05}          Sua primeira troca
# Clicar em "Fechar pedido"
#   Click Element                     ${FINALIZAR}





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