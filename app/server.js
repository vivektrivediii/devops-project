const http = require("http");
const PORT = 3000;

http.createServer((req, res) => {
  res.writeHead(200);
  res.end("Hello, Paper.Social!");
}).listen(PORT, () => console.log(`Running on ${PORT}`));
