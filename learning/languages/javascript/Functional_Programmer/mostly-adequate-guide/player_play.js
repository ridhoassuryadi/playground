let Immutable = require('immutable')

let decrementHP = (player) => player.set('hp', player.get('hp') - 1)

let isSameTeam = (player1,player2) => player1.get('team') === player2.get('team')

let punch = (player,target) => isSameTeam(player,target) ? target : decrementHP(target)

let doni = Immutable.Map({
    name : 'Doni',
    hp : 20,
    team : 'red'
   })


let michael = Immutable.Map({
   name : 'Michael',
   hp : 30,
   team: 'blue'
})


punch(doni, michael)
