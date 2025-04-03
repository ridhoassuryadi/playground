const cuts = ['Chuck', 'Brisket', 'Shank', 'Short Rib'];

for (const [i, cut] of cuts.entries()){
  console.log(`${cut} is the ${i + 1} item`);
}


(function addUpNumbers(){
    let total = 0;
    for (num of arguments){
	total += num;
    }

    console.log(total);
    
})(10,23,52,48);


