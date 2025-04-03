class Monad {
    constructor(value){
	this.__value = value
    }

    static of(val){
	return new Monad(val);
    }

    map(f){
	return Monad.of(f(this.__value))
    }

    join() {
	return this.__value
    }

    chain(f) {
	return this.map(f).join()
    }
       ap(someOtherMonad) {//Used to deal w/ multiple Monads
        return someOtherMonad.map(this.__value);
    }
}
