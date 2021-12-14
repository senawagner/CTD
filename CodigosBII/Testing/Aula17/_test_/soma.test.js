const { soma, subtracao, multiplica, divisao } = require('../calculadora.js');

test('soma de números', () => {
    expect(soma(10, 5)).toBe(15);

})