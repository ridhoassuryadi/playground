const M = require('ramda-fantasy').Maybe,
    R = require('ramda'),
    Just = M.Just,
    Nothing = M.Nothing,
    isEmpty = R.empty

let sumArray = (obj, fn) => R.is(Array, obj)
let sumNestedArrays = R.curry(array => R.is(Array, array) ?
                                            Just(array.reduce((now, next) => now.concat(next),[])
                                                      .reduce((now, next) => now + next))
                                                    : Nothing())

console.log(sumNestedArrays([1,3,[3,4]]).getOrElse([]))
