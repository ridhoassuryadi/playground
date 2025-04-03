const State = require('crocks/state');
const Pair = require('crocks/pair');

// State s a
// (s -> (a, s))

// toAdd5 :: Number -> Number
const toAdd5 = num => num + 5

const m =
    State(state => Pair(toAdd5(state), state))

const updateValue = x =>
    State(s => Pair(s + x, s));

const updateState = x =>
    State(s => Pair(s, s + x))

console.log(m.evalWith(45))

console.log(updateValue(10).runWith(30).fst())

console.log(updateState(10).runWith(20).snd())
