const LongestWord = (words) => {
    if (!words) return false //get return false when undefined or empty

    return words.trim().split(' ').sort((prevValue, nextValue) => prevValue.length < nextValue.length)
}


console.log(LongestWord('Ayam goreng'))


module.exports = LongestWord
