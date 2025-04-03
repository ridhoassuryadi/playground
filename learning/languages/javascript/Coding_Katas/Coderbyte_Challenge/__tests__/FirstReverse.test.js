//var firstReverse = require('./course/FirstReverse.js);
var path = require('path')
var firstReverse = require('../course/FirstReverse.js')



//console.log(ReverseString)
test("Looping Function, 'Hello world' should be 'dlrow olleH' ", () => {
    expect(firstReverse.loop("Hello world")).toBe('dlrow olleH');
})


//console.log(firstReverse);
