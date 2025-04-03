/*
 : IIFE as we know as IMMEDIATLY INVOKED Function
 : This function use to init main function
 */


let functions = {
  hello : () => console.log('Hello'),
  names : () => console.log('My names is ridho')
};

//As Like we can configure part function
(function(configs){
    //console.log('Hello its me!', configs);
    //configs.map(config => config());
    for(var setting in configs){
	configs[setting]();
    }
  })(functions)
