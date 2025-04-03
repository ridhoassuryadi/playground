/*
 * Find Stairs on for while step
 * n = 3 
 * ex : 
 * 1 , 1 , 1
 * 1, 2
 * 2, 1
 *
 * answer : 3
 *
 * course : 3 - 1 || 3 - 1
 */
function countSteps(N){
    if(N === 1) return 1;
    if(N === 2)  return 2;

    return countSteps(N - 1) + countSteps(N - 2);
}


module.exports = countSteps
//console.log(countSteps(5))
