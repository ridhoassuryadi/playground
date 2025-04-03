
const factorial = (input) => {

    if (typeof input == 'undefined' || input.length < 0) return false;
    
    return input == 1 ? 1 : input * factorial(input - 1);
}

module.exports = factorial
