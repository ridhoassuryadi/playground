let memoize = function(f){
    var cache = {}

    return function(){
       console.log(arguments)
       let arg_str = JSON.stringify(arguments);
       cache[arg_str] = cache[arg_str] || f.apply(f, arguments)

       return cache[arg_str]
     }
    },

    myYears = 16,
    myHouse = 25,
    squareNumber = memoize((myYears) => myYears * myHouse)(4);


console.log(squareNumber);
