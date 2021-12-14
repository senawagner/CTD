*** Variables ***
${SITE}                     https://saucedemo.com
${NAVEGADOR}                Chrome
${CAMPO_USUARIO}            css=#user-name
${CAMPO_SENHA}              css=#password
${BOTAO_LOGIN}              css=#login-button
${USUARIO}                  standard_user
${SENHA}                    secret_sauce
${PRODUTO}                  css=#item_4_title_link > div
${ADICIONAR}                css=#add-to-cart-sauce-labs-backpack
${CARRINHO}                 css=#shopping_cart_container > a
${CHECKOUT}                 css=#checkout
${CAMPO_NOME}               css=#first-name
${CAMPO_SOBRENOME}          css=#last-name
${CAMPO_CEP}                css=#postal-code
${BOTAO_CONTINUE}           css=#continue
${NOME}                     Wagner
${SOBRENOME}                Sena
${CEP}                      11000
${TOTAL}                    css=
${TOTAL_VALOR}
${FINALIZAR}                css=
${MENSAGEM_OBRIGADO}        css=
${TXT_MSG_OBRIGADO}


*** keywords ***
Abrir a loja
  Open Browser              ${SITE}                 ${NAVEGADOR}

Fazer Login
  Imput text                ${CAMPO_USUARIO}        ${USUARIO}
  Imput text                ${CAMPO_SENHA}          ${SENHA}
  Click Element             ${BOTAO_LOGIN}  

Selecionar um produto e adicionar no carrinho
  Click Element             ${PRODUTO}
  Click Element             ${CHECKOUT} 

Abrir o carrinho e clicar no botão Checkout
  Click Element             ${PRODUTO}
  Click Element             ${CHECKOUT} 

Preencher dados do cliente
  Imput text                ${CAMPO_NOME}           ${NOME}
  Imput text                ${CAMPO_SOBRENOME}      ${SOBRENOME}
  Imput text                ${CAMPO_CEP}            ${CEP}
  Click Element             ${BOTAO_CONTINUE} 

Validar valor total da compra e clicar em Finish
  Element Should Contain    ${TOTAL}                ${TOTAL_VALOR}
  Click Element             ${FINALIZAR}

Validar mensagem de compra finalizada
  Element Should Contain    ${MENSAGEM_OBRIGADO}    ${TXT_MSG_OBRIGADO}




