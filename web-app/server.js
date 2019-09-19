'use strict';

const express = require('express');

// Constants
const PORT = 3000;
const HOST = '0.0.0.0';


// App
const app = express();
app.get('/hello', (req, res) => {
  res.send('Hello world\n');
});

app.get('/', function (req, res) {
   
  var mysql      = require('mysql');
  var connection = mysql.createConnection({
    host     : 'mysql-database',
    user     : 'root',
    password : 'password',
    database : 'forestdb'
  });
  
  connection.connect();
  
  // connection.query('select * from forests', function (error, results, fields) {
  //   if (error) throw error;
  //   console.log('The solution is: ', results[0].solution);
  // });
  
  connection.end();

});


app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);