
let amigos = ['Daniel', 'Guilherme', 'Vanessa', 'Isnard', 'Wagner' ]
let pizza = ['fatia 1','fatia 2','fatia 3','fatia 4 '];


amigos.forEach((nome, index) => {
    !(index >= pizza.length)
      ? console.log(`${nome} recebeu a ${pizza[index]}`)
      : console.log(`${nome} vai ficar sem fatia :(`);
  });
  