var foo = function bar() {
    var foo = "baz"

    function baz(foo){
	console.log('bar adalah', bar);
	foo = bar
	foo;
    }

    baz();
};

foo();

try {
    bar()
}catch(e){
    console.error('Bar is not function');
}

