const { Map, List } = require('immutable-ext');
// Sum monoid
const Sum = x =>
({
  x,
  concat: ({x: y}) => Sum(x + y),
  inspect: () => x
})

Sum.empty = () => Sum(0)

const res1 = Map({ brian: 1, ridho: 2})
                .map(Sum)
                .fold(Sum.empty())
              
const res2 = List.of(1,2,3)
            .foldMap(Sum, Sum.empty())

console.log(res1)
console.log(res2)