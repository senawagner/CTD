// Rotina - Calcular Média

var n1 = 7
var n2 = 7.5
var n3 = 8.2
var n4 = 9.2

var media = (n1 + n2 + n3 + n4) /4
// console.log("Media...: "+media);
// Regras: Média>= 7 - escreva 'aprovado'
//         Média entre 4 e 6.9 - escreva 'Recuperação'
//         Média <4 - escreva 'reprovado'
if(media >= 7) {
    console.log('Sua média foi......: '+ media +" Situação..: Aprovado");
} else if (media >= 4 && media < 7) {
    console.log('Sua média foi......: '+ media +" Situação..: Recuperação");
} else {
    console.log('Sua média foi......: '+ media +" Situação..: Reprovado");
}
