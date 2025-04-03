var foo = "bar";

function bar() {
    var foo = "baz" //just scoped for this function
    console.log(foo); // "foo"
}

function baz(foo) {
    foo = "bam"
    bam = "yay"
    console.log('hi im come from foo',foo);
    return foo = "yolo"
}


bar(); //run function

console.log(foo); //baz ? not is "bar"

baz(foo);
console.log(foo); // print bar



