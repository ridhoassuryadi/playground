class MovieCollection extends Array {
    constructor(name, ...items){
	super(...items);
	this.name = name;
    }

    add(movie){
	this.push(movie);
	return this;
    }

    top(limit = 5){
	return this.sort((a, b) => a.stars > b.stars ? -1 : 1).slice(0, limit);
    }
}

const movies = new MovieCollection('good movies', 
    {name: 'IT', stars: 3},
    {name: 'Pirates of You', stars: 4},
    {name: 'Baby Driver', stars: 5},
    {name: 'Fast so Fast', stars: 2},
    {name: 'Low Level', stars: 4}
)


movies.add({name: 'Shark', stars: 4});
