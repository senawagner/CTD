// Grupo:
// Pedro Cardoso
// Ana Karla
// Israel Almeida

// Parte 1

// 1) Escreva um algoritmo para calcular o consumo médio de um automóvel (medido em km/l), dado que são conhecidos a distância total percorrida e o volume de combustível consumido para percorrê-la (medido em litros).

// Distancia Total / Litros gastos no total

function mediaConsumo(distancia, combustivel){
    return (distancia/combustivel).toFixed(2);
};

console.log(mediaConsumo(19, 9));

// 2) Em uma festa, homens pagam 20 reais de entrada e as mulheres pagam 17. Crie um programa que pergunta quantos homens e quantas mulheres participaram da festa e calcula o valor total arrecadado com as entradas.

// H = 20, M = 17 => h*20 + m*17

function calculaArrecadacao(qtdHomens, qtdMulheres){
    return qtdHomens*20 + qtdMulheres*17;
};

console.log(`\nQuantos homens e mulheres vão participar da festa?`);
console.log(`Considerando 15 Homens e 16 mulheres: Resultado = R$${calculaArrecadacao(15, 16)},00`);

// 3) Escreva um programa que ajuda os alunos a calcularem as notas desta disciplina. O programa deve perguntar as notas da primeira e da segunda prova, calcular a média aritmética entre elas, e exibir na tela.

// MédiaAritmetica = Soma(P1 + P2)/Qtd(2)

function mediaArit(p1, p2){
    return (p1+p2)/2;
};

console.log(`\nQual a nota da primeira e da segunda prova?`);
console.log(`Considerando P1 = 8.5 e a P2 = 7.2`);
console.log(`Média Aritmética = ${mediaArit(8.5, 7.2)}`);

// 4) Escreva um programa que solicita o nome de 3 alimentos e então exibe o nome dos 3 separados por virgulas. Ex: maçã, pera, banana.


function separaVirgulas(item1, item2, item3){
    return `${item1}, ${item2}, ${item3}`;
};

console.log(`\nInsira 3 alimentos`);
console.log(`Considerando Maça, Pera, Banana`);
console.log(`Impressão = ${separaVirgulas("Maça", "Pera", "Banana")}`);

// Parte 2

// 1) Faça um algoritmo que receba um número e mostre uma mensagem caso este número seja maior que 10.

// num > 10 => "Este número é maior que 10"

function maiorQue10(numero){
    if(numero > 10)
        return `O número informado é maior que 10!`
    else
        return `O número informado é menor ou igual a 10`
};

console.log(`\nInsira o número a ser analisado`);
console.log(`Considerando Número = 11`);
console.log(`${maiorQue10(11)}`);

// 2) Escrever um algoritmo que leia dois valores inteiros e informe qual deles é o maior.

// num1 \\ num2 => num1 > num2

function maiorQue(num1, num2){
    if(num1 > num2)
        return `${num1} é maior que ${num2}`;
    else
        return `${num2} é maior que ${num1}`;
};

console.log(`\nInsira dois números a serem analisados`);
console.log(`Considerando Num1 = 25 e Num2 = 17`);
console.log(`${maiorQue(25, 17)}`);

// 3) Escrever um algoritmo que leia dois valores inteiros e informe se os números são iguais.

// num1 \\ num2 => num1 == num2 OU num1 === num2

function seIgual(num1, num2){
    if(num1 === num2)
        return `${num1} é estritamente igual ao ${num2}!`;
    else
        return `${num1} não é estritamente igual ao ${num2}!`;
};

console.log(`\nInsira dois números a serem analisados`);
console.log(`Considerando Num1 = 26 e Num2 = 26`);
console.log(`${seIgual(26, 26)}`);

// 4) Solicite que o usuário digite um número. Informe então se este número é par ou ímpar.

// num => num%2 (MOD)

function sePar(num){
    if(num%2 == 0)
        return `${num} é par!`;
    else
        return `${num} é ímpar!`; 
};

console.log(`\nInsira um número para análise`);
console.log(`Considerando Número = 6`);
console.log(`${sePar(6)}`);


// 5) Crie um programa que receba um número inteiro e informa se este número é múltiplo de 10.

// num => num%10 == 0

function seMultiplo10(num){
    if(num%10 == 0)
        return `${num} é um múltiplo de 10!`;
    else
        return `${num} não é um múltiplo de 10!`;
};

console.log(`\nInsira um número para análise`);
console.log(`Considerando Número = 20`);
console.log(`${seMultiplo10(20)}`);

// Parte 3

// 1) Escreva um programa que solicita um número inteiro. Exiba uma mensagem de erro se o número informado estiver entre 15 e 25 ou entre 45 e 50.

// num \\ num => 15-25 OU 45-50

function msgErro(num){
    if((num>15 && num<25) || (num>45 && num<50))
        return `Erro: ${num} está entre os parâmetros especificados como inválidos`;
    else
        return `${num} é um número válido`;
};

console.log(`\nInsira um número para análise`);
console.log(`Considerando Número = 17`);
console.log(`${msgErro(17)}`);

// 2) Faça um algoritmo que receba um número e mostre uma mensagem caso este número seja maior que 80, menor que 25 ou igual a 40.

// num \\ num => num>80 OU num<25 OU num==40

function msgErro2(num){
    if(num > 80 || num <25 || num==40)
        return `Erro: ${num} está entre os parâmetros especificados como inválidos`;
    else
        return `${num} é um número válido`;
};

console.log(`\nInsira um número para análise`);
console.log(`Considerando Número = 40`);
console.log(`${msgErro2(40)}`);

// 3) Escrever um algoritmo que leia três valores inteiros e verifique se eles podem ser as medidas dos lados de um triângulo.

// Condições para 3 valores inteiros formarem um triângulo
// Um de seus lados deve ser maior que o valor absoluto (módulo) da diferença dos outros dois lados e menor que a soma dos outros dois lados.

// | b - c | < a < b + c

function validacaoTriang(ladoA, ladoB, ladoC){
    if(
        ((Math.abs(ladoB - ladoC) < ladoA) && (ladoA< ladoB + ladoC))
        && ((Math.abs(ladoA - ladoC) < ladoB) && (ladoB < ladoA + ladoC))
        && ((Math.abs(ladoA - ladoB) < ladoC) && (ladoC < ladoA + ladoB))
    ){
        return `É possível formar um triângulo utilizando ${ladoA}, ${ladoB}, ${ladoC} como lados`;
    }
    else {
        return `Não é possível formar um triângulo utilizando ${ladoA}, ${ladoB}, ${ladoC} como lados`;
    }
};

console.log(`\nInsira os 3 lados para análise:`);
console.log(`Considerando ladoA = 5, ladoB = 12, ladoC = 13`);
console.log(`${validacaoTriang(5, 12, 13)}`);

// 4) Crie um programa que pergunte o nome do usuário. Exiba uma mensagem diferenciada caso o nome digitado seja "William", "Rafael" ou "JavaScript".

// "string" \\ string => "William" OU "Rafael" OU "JavaScript"
//string.includes(palavra a ser procurada)

function analisaString(nome){
    let seTem = false;
    if(nome.includes("William") || nome.includes("Rafael") || nome.includes("JavaScript"))
        return `Um dos nomes especiais foi encontrado no nome!`;
    else
        return `Nenhum dos nomes especiais encontrados!`
};

console.log(`\nInsira um nome:`);
console.log(`Considerando nome = "William Shakespeare"`);
console.log(`${analisaString("William Shakespeare")}`);

// Parte 4
 
// 7) Solicite que o usuário digite uma palavra de 6 caracteres. Se for digitada uma palavra inválida, peça novamente, até que ele digite uma palavra correta.

// palavra \\ palavra != 6 caracteres => pedir a palavra novamente

function analisaPalavra(palavra){
    if(palavra.length != 6)
        return `Palavra incorreta, insira novamente!`;
    else
        return `Palavra correta`;
}

console.log(`\nInsira uma palavra de 6 caracteres:`);
console.log(`Considerando palavra = "Pedrooo"`);
console.log(`${analisaPalavra("Pedrooo")}\n`);

// Parte 5

// 1) Crie um vetor de caracteres de 10 posições. Insira a letra "JS" em todas as posições.

function criaVetJs(){
    let vet = [];
    for(let i=0; i<10; i++){
        vet.push("JS");
    }
    return vet;
}

const vet2 = criaVetJs();
console.log(`vetor = [${vet2}]`);