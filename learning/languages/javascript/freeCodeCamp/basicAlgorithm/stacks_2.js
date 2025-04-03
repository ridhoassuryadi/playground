var { compose } = require('./stacks_1.js');


let word = 'racecar';

function reverseWord(word){
    if (!word) return '';

    let rword = '';
    for(let i = word.length - 1; i >= 0; i--){
	   rword += word[i];
    }
    return rword;
}

const polyndrome = (second) => (first) => first === second;
//
console.log(compose(polyndrome(word), reverseWord)(word));
