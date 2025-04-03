var foo = "bar";

function bar(){
    var foo = "baz"

    function baz(){
	foo = "bam"
	bam = "yay" ;//assigned bam to global variable
    }
    baz();
}

bar(); //assigned bar as function
foo; //print bar
bam; //print yay
baz(); // error ? yes !

/*
 *
 * Javascript has more complicated as interpeter code
 * LHS vs RHS
 * First declaration of foo and assigned as bar
 * Second global declaration as function
 * Third declared foo as function baz
 *
 */
