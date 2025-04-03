
let Database = function(obj){ 
     this.data = Object.assign({}, obj);
}

    Database.prototype.write = function(data){
        this.data = Object.assign(...this.data, data);
	return this
    }

    Database.prototype.update = function(data){
	this.data = Object.assign(...this.data, data);
	return this
    }


    DB = new Database({name: 'ridho'});


//Views Controller
let View = function(dataset) {
    this.dataset = dataset
  }

View.prototype.index = function(){
    console.log(this.dataset)
    return this
}

View.prototype.show = function(){
    console.log(this.dataset)
    return this
}
console.log(DB.data);

let blogController = {
  index : Views.index,
  shows : Views.show,
  write : DB.write,
  update : DB.update,
  destroy : DB.destroy,
}
