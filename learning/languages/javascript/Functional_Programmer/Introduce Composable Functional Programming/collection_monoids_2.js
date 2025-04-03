
const Right = x => ({
    fold: (f, g) => g(x),
    map: f => Right(f(x)),
    concat: o => 
        o.fold(e => left(e),
               r => Right(x.concat(r))),
    foldMap: (f, eH) => x.reduce((acc, y) => 
        acc + (y ? f(y).inspect() : eH().inspect()), 0),
    inspect: _ => x
})

const Left = x => 
({
    fold: (f,g) => f(x),
    map: f => Left(x),
    concat: o => Left(x),
    inspect: _ => x
})



const fromNullable = x => {
    return x != null ? Right(x) : Left(null)
}

const Sum = x => y => x + y;

class List {
    static of(lists) {
        return lists ? Right(lists) : Left(0);
    }
}

const stats = List.of([{page: 'Home', views: 40},
                      {page: 'About', views: 10},
                      {page: 'Blog', views: 4}])

let coba = stats.foldMap( x => 
    fromNullable(x.views).map(Sum(0)), 
    Right(0) )


console.log(coba)

