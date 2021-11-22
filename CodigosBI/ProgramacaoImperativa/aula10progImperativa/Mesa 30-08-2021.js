//Tema da Aula: Array
// Mesa de Trabalho30/08/2021 - Aula 10 
// Grupo 1 - Alfredo Gutemberg, Anna Karla Americo, João Rocha, 
// Loyana Jacinto, Wagner Sena. 


let objetos = ["Lapis","Caneta","Quadro","Estojo","Apagador"];
console.log (objetos[2]); //Acessando elementos específicos;

console.log ("Array antes().......: "+objetos.length);
console.log ("=============================");
objetos.push("Papel","Apontador");

console.log("Array depois()....: "+objetos.length);//Somando número de elementos;
console.log (objetos);//Adicionando Elementos novos;



let numbers = [22, 33, 54, 66, 72];
console.log(numbers[numbers.length]); //Exercício1 - Resposta = Undefined


let grupoDeAmigos = [ ["Harry" ,"Ron" ,"Hermione"] ,["Spiderman" ,"Hulk", "Ironman"], ["Penélope Glamour", "Pierre Nodoyuna", "Patán"] ];
console.log(grupoDeAmigos[1][0]); //Exercício2 - Resposta = Spiderman

let str = "una string qualquer";
let grupoDeAmigos2 = [ [45, 89, 0], ["Digital", "House", true], ["string", "123","false", 54, true, str] ];
console.log(grupoDeAmigos2[2][grupoDeAmigos2[2].length - 1]); //Exercício3 - Resposta = "una string qualquer"


