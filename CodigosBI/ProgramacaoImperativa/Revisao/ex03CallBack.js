// 28/09/2021
// Callback é um tipo de função que só é executada após o processamento de outra função

function primeiroBloco(){
	// Aguardar 2 segundos
    setTimeout( function(){
    console.log('Esse é o primeiro bloco de comandos após 2 segundos');
    }, 2000 );
}
function segundoBloco(){
	console.log('Esse é o segundo bloco de comandos');
}
primeiroBloco();
segundoBloco();
