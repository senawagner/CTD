// Concatenar Arrays
// Versão Aula anterior feita pelo professor


let pizza = ['fatia1' , 'fatia4' , 'fatia3' , 'fatia4'];
let amigos = ['Paula' , 'Marina' , 'Filipe' , 'Rodrigo'];
let pratos = [];

amigos.forEach(
    function (amigos, i) {
        pratos = amigos.concat(" ", pizza[i]);
        console.log(pratos);
    }
)