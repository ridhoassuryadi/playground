const { add, pluralize } = require('./helpers');
const State = require('crocks/state');
const Pair = require('crocks/pair');
const compose = require('crocks/helpers/compose');

const getState = () =>
    State(s => Pair(s, s))

console.log(
    getState()
        .map(add(10))
        .evalWith(13)
)

console.log(
    getState()
        .map(pluralize('awesome', 'awesomesssss'))
        .evalWith(10)
)

const combineAddPlural = compose(
    pluralize('awesome', 'awesomesssss'),
    add(10)
)
console.log(
    getState()
        .map(combineAddPlural)
        .evalWith(1)
)