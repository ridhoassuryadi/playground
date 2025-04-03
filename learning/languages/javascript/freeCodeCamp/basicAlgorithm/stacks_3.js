var Stack = function(){
  this.count = 0;
  this.storage = {};

  //push for last state;
  this.push = function(value){
    this.storage[this.count] = value;
    this.count ++;
  }

  this.pop = function(){
    if (this.count === 0){
      return '';
    }
    //min count
    this.count --;

    let result = this.storage[this.count];
    delete this.storage[this.count];

    return result;
  }

  this.peek = function(){
    return this.storage[this.count - 1];
  }

  this.size = function(){
    return this.count;
  }
}

var myStack = new Stack();
myStack.push(1);
myStack.push(2);

console.log(myStack.peek());
console.log(myStack.pop());
