//Leitura e escrita de arquivos
//File System


const fs = require('fs');

//Objeto JSON
let frutas = '{"Fruta":"Banana","Preço":8.50,"Tipo":"Prata","Origem":"Brazuka"}';

//Gerar arquivo "teste.txt"
fs.writeFileSync('teste.txt', frutas);

//Ler arquivo "teste.txt"
let lerArquivoJSON = fs.readFileSync('teste.txt','utf-8');//codificação de caracteres
console.log(lerArquivoJSON);

//Converter obj JSON par obj JS
let converterJSONparaJS = JSON.parse(lerArquivoJSON);
console.log(converterJSONparaJS);


// Leitura e escrita de arquivos
// File System

const fs = require('fs');

// Objeto Json
let frutas = '{"Fruta":"Banana","Preco":8.50, "Tipo":"Nanica", "Origem":"Brasil"}';

// Escrever o arquivo "teste.txt"
fs.writeFileSync('teste.txt', frutas);

// Ler o arquivo "teste.txt"
let ArquivoJSON = fs.readFileSync('teste.txt','utf-8'); //codificação de caracteres
console.log(ArquivoJSON);

// converter objJSON para objJS
let converterJSONparaJS = JSON.parse(ArquivoJSON);
console.log(converterJSONparaJS);
