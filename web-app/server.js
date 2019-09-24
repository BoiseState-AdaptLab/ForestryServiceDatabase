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

  const pg = require('pg');
  const pool = new pg.Pool({
    user: 'user',
  host: 'postgres',
  database: 'db',
  password: 'pass',
  port: '5432'});

  pool.connect()
      .then(client => {
        return client.query("SELECT * FROM forests")
            .then(res => {
              client.release();
              console.log(res.rows[0]);
              
            })
            .catch(e => {
              client.release();
              console.log(e.stack);
            })
      }).finally(() => pool.end());


  // pool.query("SELECT NOW()", (err, res) => {
  //   console.log(err, res);
  //   pool.end();
  // });
  


});


app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);