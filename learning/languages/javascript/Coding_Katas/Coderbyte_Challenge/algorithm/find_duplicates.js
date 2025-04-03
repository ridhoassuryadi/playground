/*
 * Simple Algorithm for find duplicate in array
 * this things get from Coderbyte by facebook
 * case : [1,3.5,7,5,1] => [1,3,5,7] 
 */ 

let duplicates = (arrays) => {
    if (!arrays) return 0;

    let hashTables = [];
    
    for(let i = 0; i < arrays.length ; i++){
       hashTables.indexOf(arrays[i]) == -1 && hashTables.push(arrays[i]) 
    }	
    return hashTables

}

console.log(duplicates([1,3,5,7,5,1]))

module.exports = duplicates
