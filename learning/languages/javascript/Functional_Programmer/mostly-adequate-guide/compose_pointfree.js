let join = (conditional) => (array) => array.join(conditional)

let toUpperCase = (word) => word.toUpperCase()

let head = (params) => params[0]

let split = (conditional) => (word) => word.split(conditional)

let compose = (functionA, functionB) => (params) => functionA(functionB(params))

let map = f => list => list.map(f)

let initials = compose(join('.'),map(compose(toUpperCase,head)))


console.log(initials(['test','dulu']))
