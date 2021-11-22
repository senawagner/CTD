// Aula 18
// Função para retornar o menor valor de um array




Array.min = function(array) {
      return Math.min.apply(Math, array);
}    

Array.max = function(array) {
   return Math.max.apply(Math, array);
} 

let numeros = [2010, 1971, 1974, 1997, 1999];
console.log(Array.min(numeros));
console.log(Array.max(numeros));