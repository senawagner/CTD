const { generateText } = require('../util.js');

test('Saída de nome e idade', () =>{
    const text = generateText('Houser', 30);
    expect(text).toBe('Houser (30 years old)');
});