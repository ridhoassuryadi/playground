let R = require('ramda')

let stringMatch = R.curry((str,regex) => str.match(regex))


let findRidho = stringMatch('ridho')(/ridho/g)

console.log(findRidho);
