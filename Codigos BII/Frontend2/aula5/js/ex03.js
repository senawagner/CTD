/*innerHTML -  o innerHTML retorna todo o texto e o html que existem no elemento. 
Ele retorna todo o html existente, retornando também às tags, e não somente o texto.

innerText -> Retorna somente o texto, sem formatações ou elementos html.
*/
// Para que serve o método querySelector no JavaScript?
//O método querySelector( ) retorna o primeiro elemento filho que corresponda a um ou mais seletores CSS especificados. 

//innertHTML - adiciona HTML e texto
let container = document.querySelector('#container-a');

container.innerHTML = "<h2>Testando o innerHTML</h2>";

//innerText = adiciona somente texto
let containerB = document.querySelector("#container-b");
containerB.innerText = "<h2>Testando o innerText</h2>";

