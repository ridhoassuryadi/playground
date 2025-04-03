let ajaxCall = (callback) => callback('data for you') 

let getServerStuff = ajaxCall

getServerStuff((json) => console.log(json))
