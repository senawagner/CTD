const { soma, subtracao, multiplica, divisao } = require('../calculadora.js');

test('subração de números', () => {
    expect(subtracao(1000, 999)).toBe(1);

})