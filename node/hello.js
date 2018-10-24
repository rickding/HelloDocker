var http = require('http');
var fs = require('fs');

http.createServer(function(request, response) {
    if (request.url=='/') {
        fs.readFile('./hello.html', function(err, data) {
            response.writeHead(200, {'Content-Type': 'text/html'});
            response.end(data);
        })
    }
}).listen(8010);

console.log('Server running at 8010');
