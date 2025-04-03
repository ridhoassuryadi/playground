

const test = (param) => `test ${param}`;
const aloha = (param) => `aloha ${param}`;
const say = (param) => `say ${param}`;
const yolo = (param) => `yolo ${param}`;

const compose = (...functions) => {
    return function(param){
    let temp = '';
    //if is first function , then just run first function with param function index - 1
    for(let i = functions.length - 1; i >= 1; i--){
	        temp = functions[i - 1]( i === functions.length - 1 ? functions[i](param) : temp);
     }
    return temp;
   }
}


//export module
module.exports = {
  compose
}
