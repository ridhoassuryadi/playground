const name = 'ridho',
      age = 12,

      bread = ['chocolate', 'cheese'],

      franchise = ['burger', 'fried potato'],


     profile = {
	name,
	age,
	favouriteFood : [...bread, ...franchise]
     };


let data = {
    create(){
	console.log('hello , i am created');
    },
    deleted(){
	console.log('tested, i am deleted');
    }
}

console.log(`Profile ${profile}`);

console.log(`Data FUNCTION ${data}`);

const key = 'pocketColor',
    value = '#ffc600';

const tshirt = {
    [key] : value
}

console.log(tshirt);
