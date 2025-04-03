'use strict'

const race = '100m Dash';
const winners = ['Hunter Gath','Singa Song','Imda Bos'];

const win = winners.map((winner,i) => ({name: winner, race, place: i}));

console.log(win);
