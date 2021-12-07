
const {generateText} = require('../util.js');
test('Saída de nome e idade', () =>{
const text = generateText('Marina Sena', 11);
expect(text).toBe('Marina Sena (11 years old)');
});