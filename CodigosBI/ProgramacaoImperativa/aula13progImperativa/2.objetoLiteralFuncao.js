// Aula 13 - Objetos Literais Função

let carro = {
    placa: 'FRM0475',
    cor: 'Cinza',
    ano: 2021,
    flex: true,
    mostrarCaracteristicas: function () {
        return 'Características do Veículo: \nPlaca = '+ carro.placa + '\nCor = '+ carro.cor +'\nAno = '+ carro.ano + '\nFlex = '+carro.flex;

    }
}

//acessando o objeto
console.log(carro.mostrarCaracteristicas());
;