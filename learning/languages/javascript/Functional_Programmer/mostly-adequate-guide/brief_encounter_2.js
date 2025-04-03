let conjoin = (flock_x, flock_y) => flock_x + flock_y ,
    breed = (flock_x, flock_y) => flock_x * flock_y,


    flock_a = 4,
    flock_b = 2,
    flock_c = 0,


    result = conjoin(
	              breed(flock_b, conjoin(flock_a, flock_c)),
	              breed(flock_a, flock_b)
	            );


console.log(result);
