let add = (x,y) => x + y,
    multiply = (x,y) => x * y,


    flock_a = 4,
    flock_b = 2,
    flock_c = 0,


    result = add(
	          multiply(flock_b, add(flock_a,flock_c)),
	          multiply(flock_a, flock_b)
	         );
/*
 * associative
 * add(add(x, y), z) === add(x, add(y,z)))
 *
 * commutative
 * add(x,y) === add(x,y)
 *
 * identity
 * add(x,0) === x
 *
 * distributive
 * multiply(x, add(y,z)) === add(multiply(x,y), multiply(x,z))
 */

console.log(result);
