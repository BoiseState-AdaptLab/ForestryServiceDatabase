'use strict';

// ----------------------- Dependencies ----------------------- //
const express = require('express');
const app = express();
const path = require('path');
const logger = require('./modules/logger');
const bodyParser = require('body-parser');
const { Pool } = require('pg');
const pool = new Pool({
    user: 'user',
    host: 'postgres',
    database: 'ForestServiceDB',
    password: 'pass',
    port: '5432'});

// ----------------------- Constants ----------------------- //
//const PORT = 8081;
//const HOST = '0.0.0.0';
const HOST = '127.0.0.1';
const PORT = 3000;

// ----------------------- App Configuration ----------------------- //
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');
app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.urlencoded({ extended: true }));


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
app.get('/import-datasheet-preprocess', (req, res) => {
    res.render('import-datasheet-preprocess', {title: 'Import Datasheet Preprocessing'});
});

app.post('/import-datasheet-preprocess', (req, res) => {
    if (req.body['include_tran_1'] === 'true') {
        let transect1 = true;
    }  else {
        let transect1= false;
    }

    // Retrieving info from form to be passed to next form
    let transect1 = req.body['include_tran_1'] === 'true';
    let transect2 = req.body['include_tran_2'] === 'true';
    let transect3 = req.body['include_tran_3'] === 'true';
    let numSpeciesSummary = req.body['num_species'];
    let numSpeciesT1 = req.body['transect1_species'];
    let numSpeciesT2 = req.body['transect2_species'];
    let numSpeciesT3 = req.body['transect3_species'];

    res.render('import-datasheet', {title: 'Import Datasheet', transect1, transect2, transect3, numSpeciesSummary, numSpeciesT1, numSpeciesT2, numSpeciesT3});
});


app.post('/import-datasheet', (req, res) => {
    logger.log.debug('import datasheet posted');
    //TODO: handle query parameters run query on database (Brenna and Seema)
    // TODO: store results in CSV (Peter)
    res.render('results', {title: 'Datasheet processed'});
});



const fastcsv = require("fast-csv");
const fs = require("fs");
const ws = fs.createWriteStream("bezkoder_mysql_fastcsv.csv");

//EX running query on PostGres DB
app.get('/data', function (req, response) {

  pool.connect()
      .then(client => {
        return client.query("SELECT * FROM cover")
            .then(res => {
              //client.release();
              console.log(res.rows[0]);
                const jsonData = JSON.parse(JSON.stringify(res.rows));
                console.log("jsonData", jsonData);

                fastcsv
                    .write(jsonData, { headers: true })
                    .on("finish", function() {
                        console.log("Write to bezkoder_mysql_fastcsv.csv successfully!");
                    })
                    .pipe(ws);
              response.send(ws);
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

