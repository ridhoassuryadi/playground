const Just = value => ({
    map: f => Just(f(value)),
    bind(f) { 
        return this.map(f).join()
    },
    join: () => value,
    isJust: () => true, 
    isNothing: () => false, 
    orJust: _ => value ? value : false
})


const Nothing = () => ({
    map: () => Nothing(),
    bind: () => Nothing(), 
    join: () => Nothing(),
    isJust: () => false,
    isNothing: () => true, 
    orJust: v => v 
})



class Maybe {
    static of(val){
        if (!val) return Nothing()
        return Just(val)
    }
}


const familyTreeRidho = {
    name: 'Suryadi',
    spouse: 'father',
    child: {
        name: 'Ridho',
        spouse: 'son'
    }
}

const getChild = person => Maybe.of(person.child)

let apakahSudah = Maybe.of(familyTreeRidho)
    .bind(getChild)
    .bind(getChild)
    .orJust('Insya allah');

console.log(apakahSudah);