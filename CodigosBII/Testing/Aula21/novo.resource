*** Variables *** 
${SITE}             https://saucedemo.com 
${NAVEGADOR}        Chrome 
${CAMPO_USUARIO}    css=#user-name 
${CAMPO_SENHA}      css=#password 
${BOTAO_LOGIN}      css=#login-button 
${USUARIO}          standard_user 
${SENHA}            secret_sauce
${PRODUTO}          css=#item_4_title_link > div
${ADICIONAR}        css=#add-to-cart-sauce-labs-backpack
${CARRINHO}         css=#shopping_cart_container > a
${CHECKOUT}         css=#checkout
${CAMPO_NOME}       css=#first-name
${CAMPO_SOBRENOME}  css=#last-name
${CAMPO_CEP}        css=#postal-code
${BOTAO_CONTINUE}   css=#continue
${NOME}             Mario
${SOBRENOME}        Braga
${CEP}              00000
${TOTAL}            css=#checkout_summary_container > div > div.summary_info > div.summary_total_label
${VALOR_TOTAL}      $32.39
${FINALIZAR}        css=#finish
${MENSAGEM_OBRIGADO}  css=#checkout_complete_container > h2
${TXT_MSG_OBRIGADO}   THANK YOU FOR YOUR ORDER

*** Keywords *** 
Abrir a loja 
    Open Browser    ${SITE}                 ${NAVEGADOR} 

Fazer login 
    Input Text       ${CAMPO_USUARIO}       ${USUARIO} 
    Input Text       ${CAMPO_SENHA}         ${SENHA} 
    Click Element    ${BOTAO_LOGIN} 
Selecionar um produto e adicionar no carrinho
    Click Element    ${PRODUTO}
    Click Element    ${ADICIONAR}
Abrir o carrinho e clicar no botao chekout
    Click Element    ${CARRINHO}
    Click Element    ${CHECKOUT}    
Preencher dados do cliente e clicar no botao continue
    Input Text       ${CAMPO_NOME}         ${NOME}
    Input Text       ${CAMPO_SOBRENOME}    ${SOBRENOME}
    Input Text       ${CAMPO_CEP}          ${CEP}
    Click Element    ${BOTAO_CONTINUE}
Validar valor total da campra e clicar em Finish
    Element Should Contain       ${TOTAL}         ${VALOR_TOTAL}
    Click Element    ${FINALIZAR}
Validar mensagem de compra finalizada
    Element Should Contain   ${MENSAGEM_OBRIGADO}    ${TXT_MSG_OBRIGADO}