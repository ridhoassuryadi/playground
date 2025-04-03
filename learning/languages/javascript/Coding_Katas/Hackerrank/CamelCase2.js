

let countCamelCase = (str) => {
    return str.replace(/([A-Z])/g, '$1').split(' ')
}

console.log(countCamelCase('testAyamGoreng').length);


