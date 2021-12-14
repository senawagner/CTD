const { soma } = require('../calc.js');

describe('Teste de soma', () => {

    test('Soma de 2 numeros', () =>{
        expect(soma(1,2)).toBe(3);
    })
});
