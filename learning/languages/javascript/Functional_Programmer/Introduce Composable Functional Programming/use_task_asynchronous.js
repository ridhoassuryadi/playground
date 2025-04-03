
const Task = require('data.task');
const fs = require('fs');

const readFile = (filename, enc) =>
    new Task((rej, res) => 
        fs.readFile(filename, enc, (err, contents) =>
            err ? rej(err) : res(contents))
)

const writeFile = (filename, contents) =>
    new Task((rej, res) =>
        fs.writeFile(filename, contents, (err) =>
            err ? rej(err) : res('success')
    )
)

const app = (filename) =>
    readFile(filename, 'utf-8')
    .map(contents => contents.replace(/8/g, '6'))
    .chain(contents => writeFile(filename, contents))

app('config.json')
    .fork(e => console.log(e),
          s => console.log('s',s))