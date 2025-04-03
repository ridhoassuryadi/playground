let R = require('ramda');

let getUpperCase = (str) => {
    return str.split('').reduce((sum,alphabet) => isUpperCase(alphabet) ? 
						  sum + 1 : sum + 0,0)
}

let isUpperCase = alpha => 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.indexOf(alpha) != -1 ?
			    true : false

let camelCase = (str) => {
   let num = getUpperCase(str)
    

}
console.log(getUpperCase('haiThere'));
