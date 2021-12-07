Array = [7, 8, 5, 8];

const notas = Array.reduce((contador, nota) => {
    console.log(contador + nota)
    return (contador + nota)
},0)

for (let i = 0; i < Array.length; i++) {
    console.log(`A nota do seu ${i+1}º bimestre foi ${Array[i]}`)
}

if(notas/Array.length>=7){
    console.log(`Parabéns, você foi aprovado com média ${notas/Array.length}`)
} else {
    console.log(`Infelizmente você foi reprovado, pois sua média foi ${notas/Array.length}`)
}
