const Sum = x =>
({
    x,
    concat: (y) => Sum(x+y),
    inspect: () => x
})

const Product = x => 
({
    x,
    concat: ({x : y}) => Product(x * y),
    inspect: _ => x
})

const Min = x => 
({
    x,
    concat: ({x: y}) => Min(x < y ? x : y),
    inspect: _ => x
})



Sum.empty = () => Sum(0);
Min.empty = () => Min(Infinity);


console.log(Sum(10).concat(11));
console.log(Product(30).concat(Product(11)));
console.log(Min(10).concat(Min.empty()))
