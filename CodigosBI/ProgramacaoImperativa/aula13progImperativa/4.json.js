//Objeto JSON
let frutas = '{"Fruta":"Banana","Preço":8.50,"Tipo":"Prata","Origem":"Brasil"}';
console.log("Objeto JSON......: "+frutas);

// Converter para JS
let frutasConvertidasJS = JSON.parse(frutas);
console.log("Convertida de JSON para JS ....: "+frutasConvertidasJS.origem);

//Converter para JSON
let frutasConvertidasJSON = JSON.stringify(frutasConvertidasJS);
console.log("Convertido para JSON....: "+frutasConvertidasJSON);

