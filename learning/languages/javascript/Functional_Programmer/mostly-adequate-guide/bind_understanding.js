let myObj = {
    specialFunction: function(){
  
    },

    anotherSpecialFunction : function(){
     
    },

    getAsyncData : function(cb) {
       cb()
    },

    render : function(){
     this.getAsyncData(function(){
        this.specialFunction();
	this.anotherSpecialFunction();
     }.bind(this));
    }
}

myObj.render()
