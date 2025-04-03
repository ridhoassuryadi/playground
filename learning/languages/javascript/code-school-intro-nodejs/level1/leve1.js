var http = require('http'),
    fs = require('fs')


http.createServer(function(req, res){
    fs.readFile('index.html', function(err, contents){
	if (err) return ;

	res.writeHead(200, {'Content-Type' : 'text/html'})
	res.end(contents)
    })
}).listen(8080)
