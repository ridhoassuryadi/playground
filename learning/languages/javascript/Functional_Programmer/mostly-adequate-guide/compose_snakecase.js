let compose = (functionA, functionB) => (data) => functionA(functionB(data))

let replace = (regex, target) => (word) => word.replace(regex, target)

let toLowerCase = (word) => word.toLowerCase()

let snakeCase = compose(replace(/\s+/ig,'_'),toLowerCase)

console.log(snakeCase('Hello world'))


