const Sum = x =>
    ({
        x,
        concat: ({x: y}) => 
            Sum(x + y),
        inspect: () =>
            `${x}`
    })


const First = x =>
    ({
        x,
        concat: _ => 
            First(x),
        inspect: () =>
            x
    })

const All = x => 
    ({
        x,
        concat: ({ x : y}) =>
            All( x && y),
        inspect: () => x 
    })

// const res = Sum(1).concat(Sum(2));
// const next = First('test').concat('S')
// const checkTrue = All(true).concat(All(true))

// console.log(res, next, checkTrue);
module.exports = { Sum, First, All };