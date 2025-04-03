function setWidth(){
    var width = 100;
    console.log(width); //100 , just function local scope
}


setWidth(); 

//console.log(width); //when you print out width, error!

var age = 100;

if (age > 12) {
    var dogYears = age * 7;
    console.log(`You are ${dogYears} dog years old!`);
}

//if you print again dog years , you'le get it

let height = 200;
const key = 'abc123'


