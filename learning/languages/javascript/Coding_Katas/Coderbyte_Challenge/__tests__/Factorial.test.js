const Factorial = require('../course/factorial.js')


test('Factorial testing for recursive 3', () => {
    let summary = Factorial(3)

    expect(summary).toBe(6);
})

test('Factorial must not have false, when empty input',() => {
    let summary = Factorial()

    expect(summary).toBeFalsy()
})
