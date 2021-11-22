

function podeSubir (altura, acompanhante){
    if(altura >= 1.40 && altura < 2.00){
        console.log('Pode subir.');
        return true
    } else if(altura < 1.40){
        if(acompanhante == 'sim'){
            console.log('Acesso autorizado com acompanhante.');
            return true
        } else{
            console.log('Acesso negado.');
            return false
        }
    } else if(altura < 1.20) {
        console.log('Acesso negado.');
        return false;
    } else{
        console.log ("Acesso negado")
    }
}
podeSubir(2.60, 'não')
