const names = [`wes`,'cool','lux'];

Object.freeze(names);


const fullnames = names.map(function(name) {
  return `${name} bos`
});


const fullnames2 = names.map((name) => {
  return `${name} bos`
});

// if parameter just 1, you can do this
const fullnames3 = names.map(name => `${name} bos`)

const fullnames4 = names.map(() => `hei bos`)

//or you can call function into your map function
const sayMyBos = (name) => `Hai that's ${name} my bos`;

const fullnames5 = names.map(sayMyBos);

console.log(fullnames)

console.log(fullnames2)

console.log(fullnames3)

console.log(fullnames4)

console.log(fullnames5);
