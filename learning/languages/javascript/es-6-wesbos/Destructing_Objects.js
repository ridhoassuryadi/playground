const person = {
    first : 'Wes',
    last : 'Bos',
    country : 'Canada',
    city : 'Hamilton',
    twitter : '@wesbos'
}

//get object desctructuring from variable person
const { first, last, twitter } = person;

console.log(`First ${first}, Last ${last}, Twitter ${twitter}`);

const people = {
    first : 'Wes',
    last : 'Bos',
    links : {
	social : {
	    twitter : 'https://twitter.com/ridho',
	    facebook: 'https://facebook.com/ridho',
	}
    }
}
//get object as var, example : twit as twitter, facebook as fb
const { twitter: twit, facebook: fb} = people.links.social

console.log(`Twitter ${twit} , Facebook ${fb}`);


const {instagram = "ridho", twitter: twitnya} = people.links.social

console.log(instagram);
