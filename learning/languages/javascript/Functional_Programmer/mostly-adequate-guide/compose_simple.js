

let splitter = (words) => words.split(" ")

let toUpperCase = (words) => words.toUpperCase()


let compose = (functionA, functionB) => (x) => functionA(functionB(x))


let shout = compose(splitter, toUpperCase)


console.log(shout('test'))
