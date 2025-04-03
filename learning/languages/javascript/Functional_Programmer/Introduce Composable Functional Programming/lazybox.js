const LazyBox = g => 
({
    fold: f => f(g()),
    map: f => LazyBox( () => f(g()) )
})

const result = LazyBox(() => '  64  ')
               .map(alphabet => alphabet.trim())
               .map(trimmed => new Number(trimmed))
               .map(num => num + 1)
               .map(num => String.fromCharCode(num))
               .fold(x => x.toLowerCase())

console.log(result)