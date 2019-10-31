'use strict';

// ----------------------- Dependencies ----------------------- //
const express = require('express');
const app = express();
const path = require('path');
const logger = require('./modules/logger');
const { Pool } = require('pg');
const pool = new Pool({
    user: 'user',
    host: 'postgres',
    database: 'ForestServiceDB',
    password: 'pass',
    port: '5432'});

// ----------------------- Constants ----------------------- //
const PORT = 8081;
const HOST = '0.0.0.0';

// ----------------------- App Configuration ----------------------- //
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');
app.use(express.static(path.join(__dirname, 'public')));

// ----------------------- Routes ----------------------- //

//Homepage
app.get('/', (req, res) => {
    res.render('index', {title: 'Forest Service Database'});
});

// Report summary
app.get('/report-summary', (req, res) => {
    res.render('report-summary', {title: 'Report Summary Query Builder'});
});

app.post('/report-summary', (req, res) => {
    logger.log.debug('report summary query posted');
    //TODO: handle query parameters run query on database (Brenna and Seema)
    // TODO: store results in CSV (Peter)
    res.render('results', {title: 'Report Summary Data Retrieved'});
});

// Transect
app.get('/report-transects', (req, res) => {
    res.render('index', {title: 'Transect Query Builder'});
});

app.post('/report-transects', (req, res) => {
    logger.log.debug('transect query posted');
    //TODO: handle query parameters run query on database (Brenna and Seema)
    // TODO: store results in CSV (Peter)
    res.render('results', {title: 'Transect Data Retrieved'});
});

//Full report (report summary data AND transect data)
app.get('/full-report', (req, res) => {
    res.render('index', {title: 'Full Report'});
});

app.post('/full-report', (req, res) => {
    logger.log.debug('full report query posted');
    //TODO: handle query parameters run query on database (Brenna and Seema)
    // TODO: store results in CSV (Peter)
    res.render('results', {title: 'Full Report Data Retrieved'});
});


//Importing datasheets
app.get('/import-datasheet', (req, res) => {
    res.render('import-datasheet', {title: 'Import Datasheet'});
});

app.post('/import-datasheet', (req, res) => {
    logger.log.debug('import datasheet posted');
    //TODO: handle query parameters run query on database (Brenna and Seema)
    // TODO: store results in CSV (Peter)
    res.render('results', {title: 'Datasheet processed'});
});


//EX running query on PostGres DB
app.get('/data', function (req, res) {

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

app.listen(PORT,HOST, () => {
    logger.log.info(`Server running at http://${HOST}:${PORT}`);
});

