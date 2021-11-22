// Aula 17 - 20/09/2021
// Métodos Avançados
// ex07Splice.js
// splice = emenda
// Splice() é o método que serve para remover e adicionar elementos
// de uma array
// Sintaxe array.splic(inicio, quantidade, item1, item2...)
// quantidade é opcional - números inteiro a eliminar no array

let frutas = ['Banana','Laranja','Limão','Maçã','Manga'];
console.log(frutas);
frutas.splice(2,0,"Mamão","Kiwi");

console.log("Lista com adição.....: ",frutas);