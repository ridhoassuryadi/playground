const addOne = (number) => number + 1;

class MyFunctor {
    constructor(value){
        this.__value = value;
    }

    static of(value){
        return new MyFunctor(value)
    }

    map(fn){
       return MyFunctor.of( fn(this.__value) )
    }

    get() {
        return this.__value
    }
}

const intFunctor = MyFunctor.of(2);

const res = intFunctor.map(addOne).get()

console.log(res)

module.exports =  addOne;