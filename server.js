var express = require('express')

var http = require('http');
// Import the sockets.js file
require('./routes/user')(app);








const app = express();
const server = http.createServer(app);

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(express.json());

app.use(cors());
app.use(flash());






app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');


const Port = process.env.PORT || 6969;

server.listen(Port, () => {
  console.log(`Server running on port ${Port}`.bgCyan.bold);
});
