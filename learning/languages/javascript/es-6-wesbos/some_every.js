const ages = [32, 15, 19, 12];

// apakah ada yang tua
const adultPresent = ages.some(age => age >= 18);

console.log(adultPresent);

// apakah semua udah tua?
const isAllOlds = ages.every(age => age >= 18);

console.log(isAllOlds);
