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

const { Client } = require('pg');

const client = new Client({
  connectionString: process.env.DATABASE_URL,
  ssl: true,
});

client.connect();

client.query('SELECT table_schema,table_name FROM information_schema.tables;', (err, res) => {
  if (err) throw err;
  for (let row of res.rows) {
    console.log(JSON.stringify(row));
  }
  client.end();
});


});


app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
