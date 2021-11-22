// Arrow Function


// Arrow Function
let multiplo = (a,b) => {
    let resto = a % b;
    return resto == 0;
}

if(multiplo(20,2) == true){
    console.log("É múltiplo");
} else {
    console.log("Não é múltiplo");
}
