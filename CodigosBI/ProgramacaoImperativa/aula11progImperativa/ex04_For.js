//Repetições - For
// Início - Limite - Modifica

// exibirTipo(10);
// function exibirTipo(limite){
//     for(let i = 0; i <= limite; i++){
//         if(i%2==0)
//             console.log("PAR = "+i);
//         else
//             console.log("IMPAR = "+i);
//     }
// }

//Retorna numeros pares
exibirTipo(10);
function exibirTipo(limite){
    for(let i = 0; i <= limite; i+=2){
        if(i%2==0)
            console.log("PAR = "+i);
        else
            console.log("IMPAR = "+i);
    }
}


