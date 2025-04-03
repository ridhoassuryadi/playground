
let inRing = 'Donny'
let outRing = 'Dan'

//use destructing for variable

console.log(`Before Destructing inRing ${inRing}, outRing ${outRing}`);

[outRing, inRing] = [inRing, outRing]

console.log(`After Destructing inRing ${inRing}, outRing ${outRing}`);
