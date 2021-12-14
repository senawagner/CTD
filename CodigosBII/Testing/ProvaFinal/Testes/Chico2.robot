*** Settings ***
Library           SeleniumLibrary
Resource          ./Chico.resource
Test Setup        Abrir o site do Chico

*** Test Case ***
Processo de compra de uma camiseta "Vira lata caramelo" no site do Chico Rei  
    Clicar em "Concordar" no aviso sobre Cookies
    Pesquisar por "Vira lata caramelo" e selecionar a primeira opção da lista de resultados
    Validar se o valor do produto é "R$ 69,90"
    Selecionar um tamanho, cor e clicar em comprar
    Clicar em "Ver sacola"
    Validar se a mensagem "VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!" está sendo exibida
    Clicar em "Fechar pedido"
Processo de compra de uma camiseta "Amarelo é Desespero" no site do Chico Rei
    Clicar em "Concordar" no aviso sobre Cookies
    Pesquisar por "Amarelo é desespero" e selecionar a primeira opção da lista de resultados
    Validar se o valor do produto é "R$ 69,90"
    Selecionar um tamanho, cor e clicar em comprar caso 2
    Clicar em "Ver sacola"
    Validar se a mensagem "Adquira o Chico Rei Prime para desfrutar de frete grátis por 1 ano em todos os pedidos, sem valor mínimo." está sendo exibida
    Clicar em "Fechar pedido"
Processo de compra de uma camiseta "Erarr é humano" no site do Chico Rei
   Clicar em "Concordar" no aviso sobre Cookies
    Pesquisar por "Erarr" e selecionar a primeira opção da lista de resultados
    Validar se o valor do produto é "R$ 69,90"
    Selecionar um tamanho, cor e clicar em comprar caso 3
    Clicar em "Ver sacola"
    Validar se a mensagem "De segunda a sexta, das 8h às 20h." está sendo exibida
    Clicar em "Fechar pedido"
Processo de compra de uma camiseta "Nem Te Vi" no site do Chico Rei
    Clicar em "Concordar" no aviso sobre Cookies
    Pesquisar por "Nem Te Vi" e selecionar a primeira opção da lista de resultados
    Validar se o valor do produto é "R$ 69,90"
    Selecionar um tamanho, cor e clicar em comprar
    Clicar em "Ver sacola"
    Validar se a mensagem "Compre parcelado com cartão ou a vista com boleto ou depósito" está sendo exibida
    Clicar em "Fechar pedido"
Processo de compra de uma camiseta "Alceu Dispor" no site do Chico Rei
    Clicar em "Concordar" no aviso sobre Cookies
    Pesquisar por "Alceu Dispor" e selecionar a primeira opção da lista de resultados
    Validar se o valor do produto é "R$ 69,90"
    Selecionar um tamanho, cor e clicar em comprar
    Clicar em "Ver sacola"
    Validar se a mensagem "Sua primeira troca na Chico Rei é por nossa conta!" está sendo exibida
    Clicar em "Fechar pedido"