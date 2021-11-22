const filmes = ["top gun", "titanic", "star wars", "armagedon" ];

//Exercício 1
function convertMaiusculas(arr){

};

//For
function convertMaiusculas(array){
    const aux = [];
    // 4 ciclos de loop
    for(let i = 0; i < array.length; i++) 
    aux.push(array[i]. toUpperCase());
    return aux;
};

const filmesMaiusculas = convertMaiusculas(filmes);
console.log(filmesMaiusculas);