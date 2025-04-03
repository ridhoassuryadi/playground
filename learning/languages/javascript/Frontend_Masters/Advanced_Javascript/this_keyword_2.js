var o1 = {
    bar : 'bar 1',
    foo : function(){
	console.log(this.bar)
    }
}

var o2 = { bar : 'bar 2', foo : o1.foo},
    bar = 'bar3',
    foo = o1.foo;


o1.foo();
o2.foo();
foo()
