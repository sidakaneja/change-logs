import http from 'node:http'


const server = http.createServer(async (req, res) => {
	if (req.method === 'GET' && req.url === '/') {
		res.statusCode = 200;
		res.end();
	}
})

server.listen(3000, () => {
	console.log("starting server on http://localhost:3000");
})
