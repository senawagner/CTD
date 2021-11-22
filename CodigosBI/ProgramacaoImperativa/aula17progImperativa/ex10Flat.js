// Aula 17 - 20/09/2021
// Métodos Avançados
// ex10Flat.js
// Flat = Plano
// Método Insere um sub-array dentro do array principal

let numeros = [1,2,3,[4,5,[6,7]]]; //[array principal,[sub-array[sub-array]]
console.log(numeros);
novoArray = numeros.flat(2);
console.log(novoArray);