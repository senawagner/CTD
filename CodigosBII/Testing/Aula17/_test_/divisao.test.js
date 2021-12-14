const { soma, subtracao, multiplica, divisao } = require('../calculadora.js');

test('dividir números', () => {
    expect(divisao(52, 2)).toBe(26);

})