*** Settings ***
Library         SeleniumLibrary
Resource        ./wagner.resource

*** Test Case ***
Processo de compra na loja Sauce Demo
  Abrir a loja
  Fazer login
  Selecionar um produto e adicionar no carrinho
  Abrir o carrinho e clicar no botão Checkout
  Preencher dados do cliente
  Validar valor total da compra e clicar em Finish
  Validar mensagem de compra finalizada



