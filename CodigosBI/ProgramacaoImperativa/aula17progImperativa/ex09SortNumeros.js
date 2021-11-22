// Aula 17 - 20/09/2021
// Métodos Avançados
// ex09SortNumeros.js
// Sort = ordenar
// Array.sort(), método que ordena os elementos de uma array

let numeros = [50, 100, 2, 5, 25, 10];

// ordem crescente
console.log(numeros.sort(
    function(a,b) {
        return a-b;
    }    
)); 

// ordem decrescente
console.log(numeros.sort(
    function(a,b) {
        return b-a;
    }    
)); 