
const Left = x => ({
    chain: f => Left(f(x)),
    map: f => f(x),
    fold: (t, f) => f(x)
})

const Right = x => ({
    chain: f => Right(f(x)),
    map: f =>  f(x),
    fold: (t,f) => t(x)
})

const fromNullable = x => 
    x ? Right(x) : Left('e')

const streetName = user => 
    fromNullable(user.address)
        .chain(address => fromNullable(address.street.name))
        .map(x => x)
        .fold(f => f, e => e)


