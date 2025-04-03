class Animal {
  constructor(name){
    this.name = name;
    this.thirst = 100;
    this.belly = [];
  }

  drink(){
    this.thirst -= 100;
      return this.thirst;
  }

  eat(food){
    this.belly.push(food);
    return this.belly;
  }
}

class Dog extends Animal {
    constructor(name, breed){
	super(name);
	this.breed = breed;
    }
    bark(){
	console.log(`I' Am the dog, my name is ${this.name}`);
    }
}

let monkey = new Animal('monyet');

console.log(monkey.drink());
console.log(monkey.eat('burger'));
console.log(monkey.eat('sosis'));

let doggy = new Dog('doggy', 'king charles');
doggy.bark();
