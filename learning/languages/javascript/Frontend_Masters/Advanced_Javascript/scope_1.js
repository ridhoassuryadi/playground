var global = 'global'
var anotherGlobal = 'also global'

function functionScope() {
   var global = 'function scoped'

   console.log(global); //function scoped
   var scoped = 'also function scoped'

   function inner() {
     console.log(scoped); //also function scoped
     console.log(anotherGlobal) // also global
   }

   inner()
}

console.log(global) //global
console.log(anotherGlobal) //also global

try {
   console.log(scoped) // refrence error, because the scope just function
    }catch(e){
	console.error(e);
    }
functionScope()

inner(); //refrence error
