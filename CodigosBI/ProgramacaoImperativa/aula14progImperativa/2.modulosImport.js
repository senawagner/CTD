// Aula 14 - Módulos

let pets = require('./modulos/2.modulosExport'); //Importação
// console.log(pets.cachorro);
// console.log(pets.gato);
//console.log(pets.gato.nome);
console.log("O nome da minha gata é: "+pets.gato.nome);
console.log("Ela tem "+pets.gato.idade+" anos!");
console.log("É uma linda "+pets.gato.genero , pets.gato.cor);