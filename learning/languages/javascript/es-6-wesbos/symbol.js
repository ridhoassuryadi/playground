const wes = Symbol('wes'),
      person = Symbol('wes');


const classRoom = {
    [Symbol('Mark')] : { grade: 50, gender: 'male'},
    [Symbol('Olivia')] : { grade: 80, gender: 'female'},
    [Symbol('Olivia')] : { grade : 80, gender : 'female'}
}

for (person in classRoom) {
    console.log(person);
}

const syms = Object.getOwnPropertySymbols(classRoom);
const data = syms.map(sym => classRoom[sym]);
console.log(data);
