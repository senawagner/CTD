// 1 Crie um formulário com campos de input e botões de submit e reset.
// 2 Previna a página de ser recarregada quando houver o submit utilizando preventDefault().
// 3 Mostre um alerta na página quando a tela terminar de ser carregada.
// 4 Adicione uma cor a um texto quando o mouse ficar acima do mesmo e outra cor quando ele sair do mesmo.

// 5 Faça um trecho de código que utilize algum evento de teclado, esse evento irá escrever o conteúdo do input em uma tag p e logo abaixo o número de vezes que esse evento foi chamado. Exemplo: <p>futebol</p> <p>7</p> .



window.onload = function(){
    alert("A página terminou de ser carregada!")
}

document.getElementById("Form")
.addEventListener("submit", function(event){
    event.preventDefault()
   
})


alteraCor.addEventListener('mouseover', function(event){
    alteraCor.style.color = "blue" 
       
})

alteraCor.addEventListener('mouseleave', function(event){
    alteraCor.style.color = "purple" 

})

