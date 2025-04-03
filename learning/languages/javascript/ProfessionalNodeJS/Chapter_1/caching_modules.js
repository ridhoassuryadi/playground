/*
For instance, say you have the following module inside the fi le called my_module.js:
console.log('module my_module initializing...');
module.exports = function() {
 console.log('Hi!');
};
console.log('my_module initialized.');
If the following script loads the script once:
var myModuleInstance1 = require('./my_module');
*/

var myModules = require('./my_modules'),
    myModules = require('./my_modules');

myModules()

/*
You will notice that the output is still the same:
module my_module initializing...
my_module initialized
This means that the module initialization runs only once, which may be important to know when
you are building a module that produces some side effects when being initialized.
*/
