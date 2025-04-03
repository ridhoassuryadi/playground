const key = 'abc123';

let points = 50;
let winner = false;

const person = {
    name : 'Wes',
    age : 28
}

/*
 * person.name = 'do' ; //error !
 */

const wes = Object.freeze(person);
//taddaaaaaa, solution

wes.name = 'ridho'

console.log(person);

console.log(wes);//not change but not error
