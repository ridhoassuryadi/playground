const inventors = ['Einstein', 'Newton', 'Galileo']

const newInventors = ['Musk', 'Jobs']

inventors.push(...newInventors);

console.log(inventors);

function sayHi(first, last) {
  console.log(` First ${first} , last ${last}`);
}

sayHi(...newInventors);
