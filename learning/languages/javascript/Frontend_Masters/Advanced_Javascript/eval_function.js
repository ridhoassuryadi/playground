function foo(str, a){
    eval( str ); //Yeay you got variable b
    console.log( a, b);
}

var b = 2;

foo("var b = 3;",1);

/*
 * str as parameter executed as var b
 * Evaluate/Execute JavaScript code/expressions
 */

