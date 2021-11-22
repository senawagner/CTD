//Repetições - For
// Início - Limite - Modifica

// Grupo 05 - 
// Anna Karla Americo, 
// Lelia Salles
// Marcelo Cabral
// Pedro Soares Verner
// Wagner Sena

const precoSemTaxa = [10, 100, 290, 750, 1000]; // Índices
const taxa = 1.50;// Taxa a ser incrementada;
let precoComTaxa = []; // Array

function guardarPrecoComTaxa(precoSemTaxa){ // Guarda os valôres acrescidos da taxa
    for (let i =0; i < precoSemTaxa.length; i++) { // Execução do incremento
        precoComTaxa.push(precoSemTaxa[i] * taxa); // Executa o cálculo
    }
}

function mostraPrecoReajustado(array) { // Mostra Valôres guardados 
    for(let i = 0; i < array.length; i++) { //Pega os valôres guardados
        console.log(array[i]); //  Imprime o resultado para função
    }
}
guardarPrecoComTaxa(precoSemTaxa);
mostraPrecoReajustado(precoComTaxa); //  Imprime o resultado para o usuário