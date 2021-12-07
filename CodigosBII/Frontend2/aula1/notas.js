const notasBimestrais = [2, 1.5, 10, 10]

const soma = notasBimestrais.reduce((contador, elemento) => {
    console.log(elemento + contador)
    return (elemento + contador)
})

const media = soma / 4

console.log("A media do aluno é: " + media.toFixed(1))