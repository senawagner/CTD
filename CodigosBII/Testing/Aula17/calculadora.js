function soma(a,b){
    if(typeof a === 'number' && typeof b === 'number'){
        return a+b;
    } else {
        return 0;
    }
}

function subtracao(a,b){
    if(typeof a === 'number' && typeof b === 'number'){
        return a-b;
    } else {
        return 0;
    }
}


function multiplica(a,b){
    if(typeof a === 'number' && typeof b === 'number'){
        return a*b;
    } else {
        return 0;
    }
}

function divisao(a,b){
    if(typeof a === 'number' && typeof b === 'number'){
        return a/b;
    } else {
        return 0;
    }
}

module.exports = {soma, subtracao, multiplica, divisao};