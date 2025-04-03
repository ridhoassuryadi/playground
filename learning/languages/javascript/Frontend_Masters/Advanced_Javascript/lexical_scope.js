
function foo(a){
    var b = a * 2

    function bar(c){
	console.log(a,b,c)
    }

    bar(b * 3);
}

foo( 2 ); // 2, 4, 12

/*
 * First a initialize by function foo
 * then b we left assigned from a multiply 2
 * we declare function b and take parameter for variable c
 * We run function bar(b * 3)
 * Final we get variable c from variable b multiply 3 
 * Print all a, b , c
 */

