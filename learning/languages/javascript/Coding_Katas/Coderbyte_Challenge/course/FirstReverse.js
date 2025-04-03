/*
 * Input as string ex: "Argument goes here"
 * output should : ereh seog tnemugrA
 */
function FirstReverse(str){
    var data = "";
    
    if (!str) return str;

    for (var i = str.length - 1; i > -1 ; i--){
	data += str[i]
    }
    
    return data
}




module.exports = {
    loop : FirstReverse
}
