const Task = require('data.task')

const launchMissiles = (supply) =>
    new Task((rej, res) => {
        supply === 'ok' ? res ('missile') : rej('aborted') 
    })

const app = launchMissiles('ok').map(x => x + '!')

app.fork(e => console.log(e),
         s => console.log(s))