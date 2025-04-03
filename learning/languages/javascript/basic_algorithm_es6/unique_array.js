//get unique from array
const numbers = [1, 2, 1, 1, 2, 1, 3, 4, 4, 1]

const uniq = [...new Set(numbers)],

      uniq2 = Array.from(new Set(numbers));


console.log(`Unique from array ${uniq}`);

console.log(`Unique from array2 ${uniq2}`);


