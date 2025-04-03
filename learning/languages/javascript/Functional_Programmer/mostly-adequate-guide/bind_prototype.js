Function.prototype.bind = (scope) => {
  var fn = this
  return function(){
     return fn.apply(scope)
  }
}
