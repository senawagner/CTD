*** Settings ***
Library     SeleniumLibrary
Resource    ./novo.resource

*** Test Cases ***
Processo de Compra na loja Sauce Demo
  Abrir a loja
  Fazer login
  Selecionar um produto e adicionar no carrinho
  Abrir o carrinho e clicar no botao chekout
  Preencher dados do cliente e clicar no botao continue
  Validar valor total da campra e clicar em Finish
  Validar mensagem de compra finalizada