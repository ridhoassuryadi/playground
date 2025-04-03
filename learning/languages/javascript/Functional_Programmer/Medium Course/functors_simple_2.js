import _ from 'lodash';
import addOne from './functors_simple';

class ValueMappable {
    constructor(object){
        this.__object = object;
    }

    static of(obj){
        return new ValueMappable(obj)
    }

    map(fn){
        const mapped = { };
        
        for (const key of Object.keys(this.__object)){
            mapped[key] = fn(this.__object[key])
        }

        return ValueMappable.of(mapped)
    }

    get(){
        return this.__object;
    }
}


const objFunctor = ValueMappable.of({ one: 1, two: 2 });

const res4 = objFunctor.map(addOne)
                       .map(addOne)
                       .get()

console.log(res4)