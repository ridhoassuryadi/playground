const details = ['Wes Bos', 123, 'wesbos.com'];

const [name,id, website] = details

console.log(name,id, website);


const data = 'Basketball,Sports,90210,23,wes,bos,cool';

const [itemName, category, sku, inventory] = data.split(',');

const team = ['Wes','Harry','Sarah','_Keegan','Riker'];

const [manager, assistant, ...players] = team;

console.log(`Manager ${manager}, Assistant ${assistant}, Players ${players}`);

