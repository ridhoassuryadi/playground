const deepDish = {
    name : 'nasi goreng',
    ingredients : ['nasi', 'goreng', 'ayam'],
}

const shoppingList = ['Milk', 'Flour', ...deepDish.ingredients];

console.log(`shopping list ${shoppingList}`);

const findIndex = shoppingList.findIndex((item) => item == 'nasi');

const newArray = [...shoppingList.slice(0, findIndex), ...shoppingList.slice(findIndex + 1)]
console.log(newArray);


