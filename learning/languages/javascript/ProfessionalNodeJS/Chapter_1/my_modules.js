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
console.log('module my_module initializing...');
module.exports = function() {
 console.log('Hi!');
}
