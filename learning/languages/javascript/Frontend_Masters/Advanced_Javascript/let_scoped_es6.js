function foo(bar){
    if (bar){
      let baz = bar;
       if (baz){
	   let bam = baz
       }
	console.log(bam);//error ,because scope bam
    }
    console.log(baz); //error 
}

foo("bar")
