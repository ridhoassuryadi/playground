class People {
    constructor(name, job){
	this.name = name;
	this.job = job
    }

    speak(){
	console.log(`Hai, my name ${this.name}`);
    }

    walk(){
	console.log(`Walking, into my passion in ${this.job}`)
    }

    set Hobby(value){
	this.hobby = value;
    }

    get Hobby(){
	return `My hobby ${this.hobby}`;
    }
}

People.Hobby = 'Code & Design';
console.log(People.Hobby);
