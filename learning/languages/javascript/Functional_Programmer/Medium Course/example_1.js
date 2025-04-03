let joeUser = {
    name: 'Ridho',
    email: 'ridho@gmail.com',
    prefs: {
	languages: {
	    primary: 'sp',
	    secondary: 'en'
	}
    }
}

let indexUrls = {
    'en' : 'http://mysite.com/en',
    'sp' : 'http://mysite.com/sp',
    'jp' : 'http://mysite.com/jp'
}


const R = require('ramda'); //lib for functional programming
const prop = R.prop; 
const path = R.path; //get refrence to object
const curry = R.curry;
const Maybe = require('ramda-fantasy').Maybe

const getUrlForUser = (user) => {
   return Maybe(user)
	.map(path(['prefs','languages','primary']))// refrence go to prefs > langagues > primary
        .chain(maybeGetUrl) //get method chaining for method Maybe get Url
}

const maybeGetUrl = R.curry(function(allUrls, language) { //first we get parameter all urls and we get value from method chaining
    return Maybe(allUrls[language]);
})(indexUrls);

function boot(user, defaultUrl){
    console.log(getUrlForUser(user).getOrElse(defaultUrl))
} 

boot(joeUser, 'http://site.com/en');
//console.log(getUrlForUser(joeUser));
