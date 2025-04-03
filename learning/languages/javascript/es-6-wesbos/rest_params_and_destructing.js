const convertCurrency = (rate, tax, tip, ...amounts) => amounts.map(amount => amount * rate);

const amounts = convertCurrency(1.54, 10, 23, 52, 1, 56);

const team = ['Diego', 'Ahmed', 'Don', 'Sei'] ;

const [captain, ...player] = team;


const country = ['Indonesian', 'Gabon', 'Zimbabwe', 'American'];

/*
 * will error , rest must be last
const [asian, ...african, europe] = country;
console.log(`Country Asian ${asian}, African ${african}, Europe ${europe}`);
 *
 */

console.log(`Amounts ${amounts}`);

console.log(`Captain ${captain}, Playes ${player}`);

