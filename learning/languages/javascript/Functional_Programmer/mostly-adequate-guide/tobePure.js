let xs = [1,2,3,4,5]

//pure function
let newxs = xs.slice(0,3)
// => [1,2,3]


//inpure function
xs.splice(0,3)



console.log('new xs', newxs);
