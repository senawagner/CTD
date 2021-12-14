const { multiplica, divisao, subtracao } = require('../calculadora.js');


describe('Suíte de testes de Multiplicação', () => {
    test('multiplicação de números', () =>{
        const multiplicar = multiplica(2,3);
        expect(multiplicar).toBe(6);

    });

    test('multiplicação de strings', () =>{
        const multiplicar = multiplica(100, '2');
        expect(multiplicar).toBe(0);

    });

    test('subtração de números', () =>{
        const subtrair = subtracao(1000,926);
        expect(subtrair).toBe(74);

    });

    test('divisão de números', () =>{
        const dividir = divisao(50,2);
        expect(dividir).toBe(25);

    });

});
