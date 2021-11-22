// 28/09/2021
// Callback é um tipo de função que só é executada após o processamento de outra função



let salarioBruto = 5000;

function getSalario(salarioBruto, holerite) {

    const inss = salarioBruto * 0.11;
    const vr = salarioBruto * 0.05;
    const vt = salarioBruto * 0.06;
    const descontos = inss + vr + vt;
    let salarioLiquido = salarioBruto - descontos;

    return holerite(salarioLiquido);
}

getSalario(salarioBruto, (salarioLiquido) => {
    // salarioLiquido = resultado;
    console.log(`O salário líquido é ${salarioLiquido}`);

});
