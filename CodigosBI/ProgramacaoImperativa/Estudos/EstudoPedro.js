
// undefined (indefinido)
// null
// number
// string
// boolean
// Functions

const arr = [2, 5, 6, 7];

// shift (Retirei o 2)
// console.log(arr.shift());
// console.log(arr);

// unshift (Inserir o 8)
// console.log(arr.unshift("Pedro"));
// console.log(arr);

// pop (Retirar o 7)
// console.log(arr.pop());
// console.log(arr);

// push (Inserir o 1)
// console.log(arr.push(1));
// console.log(arr);


// array.shift() -> Remove do início (Retorna o que ele retirou)
// array.unshift() -> Insere no ínicio (Retorna o novo tamanho do array)
// array.pop() -> Remove do final (Retorna o que ele retirou)
// array.push() -> Insere no final (Retorna o novo tamanho do array)


// ============================================ OBJETO LITERAL ======================================
const sofrimento = {
    grau: 3,
    nome: "Solidão",
    local: "Coração",
    vaiSobreviver: true,
    imprimirGrau: function(){
        console.log(`O meu grau é ${this.grau}`);
    }
}

// console.table(sofrimento);
// sofrimento.imprimirGrau();


// Função construtora

function Cachorro(nome, idade, cor){
    this.nome = nome;
    this.idade = idade;
    this.cor = cor;
    this.afinidade = 100;
    this.latir = function(){
        console.log("Bark, bark, bark!");
        this.latiu = true;
    };
    this.latiu = false;
}

const cachorro1 = new Cachorro("Frederico", 3, "Branco");
const cachorro2 = new Cachorro("Joaquim", 5, "Preto");

// console.log(cachorro1);
// console.table(cachorro2);

console.table(cachorro1);
cachorro1.latir();
console.table(cachorro1);

console.table(cachorro2);






