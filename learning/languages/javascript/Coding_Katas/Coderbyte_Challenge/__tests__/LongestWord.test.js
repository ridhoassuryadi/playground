const LongestWord = require('../course/LongestWord');

test('Should return makan when input is "makan ai aku" ', () => {
    expect(LongestWord('makan ai aku')).toBe('makan')
})
