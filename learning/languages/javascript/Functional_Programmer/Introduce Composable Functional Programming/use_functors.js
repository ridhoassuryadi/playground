const Box = x => 
    ({
        map: f => Box( f(x) ),
        inspect: _ => x
    })

const res1 = Box('squirrels')
             .map(s => s.substr(5))
             .map(s => s.toUpperCase())

const res2 = Box('squirrels')
             .map(s => s.substr(5).toUpperCase())


console.log(res1, res2)