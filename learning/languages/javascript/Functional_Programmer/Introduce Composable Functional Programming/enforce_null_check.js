const Left = x => ({
    map: f => Left(x),
    fold: (f, g) => f(x),
    inspect: () => `Left ${x}`
})

const Right = x => ({
    map: f => Right(x),
    fold: (f, g) => g(x),
    inspect: () => `Right ${x}`
})

const fromNullable = x => 
    x != null ? Right(x) : Left(null)

const findColor = name => 
    fromNullable({red: '#ff4444', yellow: '#fff68f'}[name])

const result = findColor('red')
                .map(c => c)
                .fold(e => 'no color',
                      c => c)

console.log(result)