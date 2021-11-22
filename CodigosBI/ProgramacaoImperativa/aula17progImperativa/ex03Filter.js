// Aula 17 - 20/09/2021
// Métodos Avançados
// ex03Filter.js
// filter() é um método que retorna um novo array,
// com os elementos que atendem uma condição

let numeros = [1, 2, -3, 4, -5, 0, 7, 8, 9, 19];
let numerosMaiores = numeros.filter(
    elemento => elemento > 5
);

console.log(numerosMaiores);