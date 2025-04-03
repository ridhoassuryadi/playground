
let ajaxCall = (callback) => callback('data')

let getServerStuff = (callback) => ajaxCall(json => callback(json))


getServerStuff((json) => console.log(json)) 
