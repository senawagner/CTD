// 28/09/2021
// Callback é um tipo de função que só é executada após o processamento de outra função


function cumprimentar(nome) {
    console.log('Olá, ' + nome);
  }
  
  function incluirNome(callback) {
    let nome = 'Paula'
    callback(nome);
  }
  
  incluirNome(cumprimentar);

