//when you really need this
const person = {
    points : 23,
    add : function() {
	this.points ++;
     }
    }


person.add();

console.log(`Points`,person.points);

//when use prototyping class
class Car {
    constructor(name, model){
	this.name = name;
	this.model = model;
    }
}

Car.prototype.printModel = function(){
    return `Model ${this.model}`
}

var bmw = new Car('bmw', 'sedan');


//when you need arguments object
const orderChildren = function(){
    const children = Array.from(arguments);
    return children.map((child, i) => `${child} was number ${i}`)
}

console.log(orderChildren('test','tad'));

console.log(bmw.printModel());
