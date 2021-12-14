*** Variables ***

${SITE}             https://chicorei.com/
${NAVEGADOR}        Chrome
${COOKIES}          css=#confirmPolicyButton
${CAMPO}            css=#header-search-input-desktop
${PESQUISA0}        Vira lata caramelo
${PESQUISA1}        Amarelo é desespero
${PESQUISA2}        Erarr
${PESQUISA3}        Nem te vi
${PESQUISA4}        Alceu dispor
${OFERTA}           css=#header-search-desktop > form > div > div > div > div:nth-child(1) > div > div.search-result-thumb.flex-child-fixed > img
${VALOR}            css=#product-main-right > div:nth-child(1) > div.product-price.text-yanone > div > p.h2.text-accent.mx-0.my-0.mr.flex-child-fixed.text-bold
${PRECO}            R$ 69,90
${TAMANHO}          css=#product-variations > div.text-yanone > div > div:nth-child(4) > nav > div:nth-child(2)
${TAMANHO1}         css=#product-variations > div.text-yanone > div > div:nth-child(3) > nav > div:nth-child(1)
${COR}              css=#product-variations > div.text-yanone > div > div:nth-child(6) > nav > div:nth-child(1) > div.product-color-option
${COR1}             css=#product-variations > div.text-yanone > div > div:nth-child(5) > nav > div:nth-child(2) > div
${COR2}             css=#product-variations > div.text-yanone > div > div:nth-child(6) > nav > div:nth-child(4) > div
${COMPRAR}          css=#product-buy-button-container > button
${SACOLA}           css=#header-cart-popover > div > div.text-center > a.btn.btn-lg.mb
${MSG}              css=#cart-loyalty > p
${MSG1}             css=#cart-prime > p
${MSG2}             css=#footer-contact > div.hidden-wholesaler.mt > p:nth-child(2)
${MSG3}             css=#footer-advantages > div.footer-advantages-items.hidden-wholesaler > div:nth-child(3) > div > p:nth-child(2)
${MSG4}             css=#footer-advantages > div.footer-advantages-items.hidden-wholesaler > div:nth-child(2) > div
${TEXTO_01}         VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!
${TEXTO_02}         Adquira o Chico Rei Prime para desfrutar de frete grátis por 1 ano em todos os pedidos, sem valor mínimo.
${TEXTO_03}         De segunda a sexta, das 8h às 20h.
${TEXTO_04}         Compre parcelado com cartão ou a vista com boleto ou depósito
${TEXTO_05}         Sua primeira troca na Chico Rei é por nossa conta!
${FECHAR}           css=#cart-finish > button.btn.btn-xl.btn-wide.mt.hidden-xs-down
            


*** Keywords ***

Clicar em "Concordar" no aviso sobre Cookies
    Open Browser                        ${SITE}             ${NAVEGADOR}
    Maximize Browser Window
    sleep  3
    Click Element                       ${COOKIES}
Pesquisar por "Vira lata caramelo" e selecionar a primeira opção da lista de resultados
    Input Text                          ${CAMPO}            ${PESQUISA0}
    Wait Until Element is Visible       ${OFERTA}
    Click Element                       ${OFERTA}
Pesquisar por "Amarelo é desespero" e selecionar a primeira opção da lista de resultados
    Input Text                          ${CAMPO}            ${PESQUISA1}
    Wait Until Element is Visible       ${OFERTA}
    Click Element                       ${OFERTA}
Pesquisar por "Erarr" e selecionar a primeira opção da lista de resultados
    Input Text                          ${CAMPO}            ${PESQUISA2}
    Wait Until Element is Visible       ${OFERTA}
    Click Element                       ${OFERTA}
Pesquisar por "Nem Te Vi" e selecionar a primeira opção da lista de resultados
    Input Text                          ${CAMPO}            ${PESQUISA3}
    Wait Until Element is Visible       ${OFERTA}
    Click Element                       ${OFERTA}
Pesquisar por "Alceu Dispor" e selecionar a primeira opção da lista de resultados
    Input Text                          ${CAMPO}            ${PESQUISA4}
    Wait Until Element is Visible       ${OFERTA}
    Click Element                       ${OFERTA}
Validar se o valor do produto é "R$ 69,90"
    Wait Until Element Is Visible       ${VALOR}
    Element Should Contain              ${VALOR}            ${PRECO}
Selecionar um tamanho, cor e clicar em comprar
    Wait Until Element Is Visible       ${TAMANHO}
    Click Element                       ${TAMANHO}
    Click Element                       ${COR}
    Click Element                       ${COMPRAR}
Selecionar um tamanho, cor e clicar em comprar caso 2
    Wait Until Element Is Visible       ${TAMANHO1}
    Click Element                       ${TAMANHO1}
    Click Element                       ${COR1}
    Click Element                       ${COMPRAR}
Selecionar um tamanho, cor e clicar em comprar caso 3
    Wait Until Element Is Visible       ${TAMANHO}
    Click Element                       ${TAMANHO}
    Click Element                       ${COR2}
    Click Element                       ${COMPRAR}
Clicar em "Ver sacola"
    Wait Until Element Is Visible       ${SACOLA}
    Click Element                       ${SACOLA}
Validar se a mensagem "VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!" está sendo exibida
    Wait Until Element Is Visible       ${MSG}
    Element Should Contain              ${MSG}            ${TEXTO_01}
Validar se a mensagem "Adquira o Chico Rei Prime para desfrutar de frete grátis por 1 ano em todos os pedidos, sem valor mínimo." está sendo exibida
    Wait Until Element Is Visible       ${MSG1}
    Element Should Contain              ${MSG1}           ${TEXTO_02}
Validar se a mensagem "De segunda a sexta, das 8h às 20h." está sendo exibida
    Wait Until Element Is Visible       ${MSG2}
    Element Should Contain              ${MSG2}           ${TEXTO_03}
Validar se a mensagem "Compre parcelado com cartão ou a vista com boleto ou depósito" está sendo exibida
    Wait Until Element Is Visible       ${MSG3}
    Element Should Contain              ${MSG3}           ${TEXTO_04}
Validar se a mensagem "Sua primeira troca na Chico Rei é por nossa conta!" está sendo exibida
    Wait Until Element Is Visible       ${MSG4}
    Element Should Contain              ${MSG4}           ${TEXTO_05}
Clicar em "Fechar pedido"
    Wait Until Element Is Visible       ${FECHAR}
    Click Element                       ${FECHAR}



Wait and Click
  [Arguments]                       ${ELEMENTO}
  Wait Until Element is Visible     ${ELEMENTO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Click Element                     ${ELEMENTO}

Wait and Input Text
  [Arguments]                       ${ELEMENTO}  ${TEXTO}
  Wait Until Element is Visible     ${ELEMENTO}
  Wait Until Element is Enabled     ${ELEMENTO}
  Input Text  
