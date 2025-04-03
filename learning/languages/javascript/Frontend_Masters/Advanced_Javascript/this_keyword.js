/*
 * this will refrenced to many object
 * for this will not wraped object, will variable foo
 */
function bar(){
    console.log(this.foo)
}
let foo = 'global foo',
    o1 = {foo : 'foo 1', bar : bar},
    o2 = {foo : 'foo 2', bar : bar},
    o3 = {foo : 'foo 3', bar : bar};


bar(); //print out global foo
o1.bar(); //print out foo 1
o2.bar(); //print out foo 2
o3.bar(); //print out foo 3
