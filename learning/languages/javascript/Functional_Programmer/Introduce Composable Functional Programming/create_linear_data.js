const Box = x => ({
    map: f => Box(f(x)),
    fold: f => f(x),
    inspect: () => `Hasilnya ${x}`
})


let charToString = str => 
                    Box(str)
                    .map(a => a.trim())
                    .map(b => parseInt(b))
                    .map(i => String.fromCharCode(i))
                    .inspect()


console.log(charToString([
    '64', '54'
]))
