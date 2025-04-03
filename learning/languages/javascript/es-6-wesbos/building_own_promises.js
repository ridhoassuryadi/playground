const newPromise = new Promise((resolve, reject) => {
			
			setTimeout(() => {
			    reject('Hai there is from promise');
			},1000)

		//	reject('error');
		    });

newPromise.then( word => console.log(word))
	  .catch(err => console.log(err))


