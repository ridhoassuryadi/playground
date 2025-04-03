const apple = {
  color: 'Red',
  size: 'Medium',
  weight: 50,
  sugar : 10
}

for (const prop in apple){
  const value = apple[prop]
 console.log(value);
}
