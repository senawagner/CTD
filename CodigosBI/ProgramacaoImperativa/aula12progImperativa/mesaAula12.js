//MESA 06 - Marco Thulio, Vinícius Alexandre, Wagner Sena



// 1.  Escreva um algoritmo para calcular o consumo médio de um automóvel (medido em  km/l),  
// dado  que  são  conhecidos  a  distância  total  percorrida  e  o  volume  de combustível 
// consumido para percorrê-la (medido em litros)


function consumo(distanciaKm, combustivelLi){
return console.log(distanciaKm / combustivelLi);

}
//consumo (50, 6)


// 2. Em uma festa, homens pagam 20 reais de entrada e as mulheres pagam 17. 
// Crie um programa que pergunta quantos homens e quantas mulheres participaram 
// da festa e calcula o valor total arrecadado com as entradas.

function festa(homens, mulheres){
    let x = homens * 20;
    let y = mulheres * 17;
    return console.log(x+y);

}
//festa(5,7);

// 3. Escreva um programa que ajuda os alunos a calcularem as notas desta disciplina. 
// O programa deve perguntar as notas da primeira e da segunda prova, calcular a média 
// aritmética entre elas, e exibir na tela.
function notas(prova1, prova2){
    let x = prova1 + prova2;
    return console.log(x/2);
}
//notas(8,3);

// 4. Escreva um programa que solicita o nome de 3 alimentos e então exibe o nome 
// dos 3 separados por virgulas. Ex: maçã, pera, banana.
const alimento = ['maca', 'banana', 'pêra']

function virgula(){
    let virgulas = alimento.join(' , ')
    return console.log(virgulas)
}
virgula();



// Parte 2
// 1.  Faça  um  algoritmo  que  receba  um  número  e  mostre  uma  mensagem  caso  este número seja maior que 10.
function maior(num){
    if (num > 10){
        console.log('Esse número é maior que 10.')
    }
    else{
        console.log('Esse número é menor que 10')
    }
};









// 2.  Escrever um algoritmo que leia dois valores inteiros e informe qual deles é o maior. 

// 3.  Escrever  um  algoritmo  que  leia  dois  valores  inteiros  e  informe  se  os  números  são iguais.

// 4.  Solicite  que  o  usuário  digite  um  número.  Informe  então  se  este  número  é  par  ou ímpar.

// 5.  Crie  um  programa  que  receba  um  número  inteiro  e  informa  se  este  número  é múltiplo de 10.





