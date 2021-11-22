// 1.Crie uma função que converta polegadas em centímetros.
function convertPol(x) {
return x * 2.54
};
// 2.Crie uma função que receba uma string e a converta em um URL.
function convertUrl(x) {
return ("https://www."+x+".com")
};
// Desafio 3 - Crie uma função que recebe uma string e retorna a mesma frase, mas com o caracter de exclamação ( ! ).
function convertStringFrase(a) { 
return (a+"!")
};
// 4.Crie uma função que calcule a idade dos cachorros, considerando que 1 ano humano, equivale a 7 anos para eles.
function ageDogs(a) { 
return a * 7
};
//5.Calcular valor fora trabalho tendo como parâmetro o seu salário mensal.
function valorHoraTrabalho(x) { 
return x / 160
};
//6.Função calculadora de IMC, que recebe a altura em cm e o peso em quilogramas.
function calcImc(peso, altura){
return peso / (altura * altura)
};
//7.Função que receba uma string em minúsculas,converta-a em maiúsculas e as retorne.Investigue o que o método de.toUpperCase()faz 
function minusMais(a){
return a.toUpperCase()
};
//8.Função que receba um parâmetro e retorne o tipo de dado deste parâmetro.Dica: Isso te ajudará a entender o que o operador typeof faz
function testeParametro(x){ 
return (typeof x)
};
//9.Função pela qual passamos o raio de um círculo e ela retorna a circunferência.Dica: Investigue se o objeto Mathtem entre suas propriedades o número Pi
function raioCircunferencia(a) {
return 2 * Math.PI * a
};


//Resultados
console.log(convertPol(5));
console.log(convertUrl("meusite"));
console.log(convertStringFrase("Fala galera"));
console.log(ageDogs(10));//10 anos correspondente dos cães equivalem a 70 anos
console.log(valorHoraTrabalho(100000));
console.log(calcImc(100, 1.70));
console.log(minusMais("texto"));
console.log(testeParametro("teste"));
console.log(raioCircunferencia(10));