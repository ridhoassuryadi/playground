let R = require('ramda')

let compose = (functionA, functionB) => (words) => functionA(functionB(words))

let head = (x) => x[0]

let reverse = R.reduce((acc, x) => [x].concat(acc), [])

let last = compose(head, reverse)


let getLast = last(['jumpkick', 'roundhouse', 'uppercut']);


console.log(getLast);

