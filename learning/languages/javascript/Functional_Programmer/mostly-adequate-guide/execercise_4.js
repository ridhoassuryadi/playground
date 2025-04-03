

let R = require('ramda')


let words = R.split(' ');


let sentences = R.map(words);


let splittedWords = words('Hello world You')

let _keepHighest = (x,y) => x >= y ? x : y

let max = R.reduce(_keepHighest, -Infinity)

let maxNumber =  max([1,3,5,7])

console.log(maxNumber)
//console.log(sentences(splittedWords))
