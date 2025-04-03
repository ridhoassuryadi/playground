function Car(brand, color){
    this.brand = brand;
    this.color = color;
}


Car.prototype.Drive = function(){
    console.log(`Super ${this.brand} is running`);
}

Car.prototype.Check = function(){
    console.log(`${this.brand} check color ${this.color}`);
}


const Tesla = new Car('tesla', 'blue');
const BMW = new Car('bmw', 'black');

Tesla.Drive();
