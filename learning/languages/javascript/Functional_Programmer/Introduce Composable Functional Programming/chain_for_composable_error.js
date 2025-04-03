const fs = require('fs')
const Left = x => ({
    chain: f => Left(x),
    map: f => Left(x),
    fold: (f, g) => f(x),
    inspect: () => `Left ${x}`
})

const Right = x => ({
    chain: f => f(x),
    map: f => Right(x),
    fold: (f, g) => g(x),
    inspect: () => `Right ${x}`
})

const tryCatch = f => {
    try {
        return Right(f())
    } catch(e){
        return Left(e)
    }
}

const getPort = () =>
    tryCatch(() => fs.readFileSync('confi.json', 'utf8'))
        .chain(data  => tryCatch(() =>JSON.parse(data)))
        .fold(e  => 'errr',
              c => c.port)
        
console.log(getPort())