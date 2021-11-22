//Checkpoint_26-08-2021

var escolha  //escolha do tipo de alimento pelo usuario
var adcional //escolha opcional de tempo pelo usuario

function microondas(alimento, adcional) {
    switch (alimento) {
        case 'pipoca':
            time = 10;
            break;
        case 'macarrao':
            time = 8;
            break;
        case 'carne':
            time = 15;
            break;
        case 'feijao':
            time = 12;
            break;
        case 'brigadeiro':
            time = 8;
            break;
        default:
            time = 0;
    }

    adcional = time + adcional;

    if (adcional < time) {
        return console.log("Tempo insuficiente!");
        //console.log("Para o alimento, " + escolha + ", o tempo é de " + adcional + " segundos!")
        //Se o tempo for menor que o padrão, o microondas exibe a mensagem: "Tempo insuficiente!" 
    } else if (adcional > time * 2 && adcional <= time * 3) {
        console.log("A comida queimou!");
        //console.log("Para o alimento, " + escolha + ", o tempo é de " + adcional + " segundos!")
        //Se o tempo informado for maior que 2x o necessário, o microondas exibe a mensagem: A comida queimou!
    } else if (adcional > time * 3) {
        return console.log("Kabumm");
        //console.log("Para o alimento, " + escolha + ", o tempo é de " + adcional + " segundos!")
        //Se o tempo for 3x maior que o necessário para o prato, o microondas exibe a mensagem: “kabumm”
    } else {
        //console.log("Para o alimento, " + escolha + ", o tempo é de " + adcional + " segundos!")
        return console.log("Prato pronto, bom apetite!!");
        //No final de cada tarefa, o microondas exibe a mensagem: "Prato pronto, bom apetite!
    }
      
}

microondas('brigadeiro', 15);