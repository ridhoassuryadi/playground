const add1 = (a) => a + 1

class MyFunctor {
    constructor(value){
	this.val = value
    }

    map(fn){
	return new MyFunctor(fn(this.val))
    }
}

let temp = new MyFunctor(1)
console.log(temp.map(add1));
