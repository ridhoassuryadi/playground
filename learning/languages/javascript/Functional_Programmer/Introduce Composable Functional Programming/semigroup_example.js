const Semigroup = require('./semigroup');
const { Map } = require('immutable-ext');

const acct1 = Map({ name: Semigroup.First('Nico'), 
                isPaid: Semigroup.All(true), 
                points: Semigroup.Sum(10),
                friends: ['franklin']
            })

const acct2 = Map({ 
    name: Semigroup.First('Robin'), 
    isPaid: Semigroup.All(false), 
    points: Semigroup.Sum(30),
    friends: ['edo']
})

const res = acct1.concat(acct2)

console.log(res.toJS())

