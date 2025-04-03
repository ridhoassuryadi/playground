const featured = ['Makroni', 'Jamur Goreng', 'Ayam tepung'],

      speciality = ['Meatzza', 'Spaghetti'];


const pizzas = [...featured, 'vegetarian', ...speciality] //just copy all on array

const fridayPizzas = [...pizzas];

//lookat there

console.log(pizzas);

console.log(fridayPizzas);
