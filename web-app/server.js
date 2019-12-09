'use strict';

// ----------------------- Dependencies ----------------------- //
const express = require('express');
const app = express();
const path = require('path');
const logger = require('./modules/logger');
const bodyParser = require('body-parser');

// ----------------------- Swagger docs ----------------------- //

const swaggerUi = require('swagger-ui-express');
const swaggerDocument = require('./swagger.json');

app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocument));

// ----------------------- DB Pool ----------------------- //

const { Pool, Client } = require('pg');
const pool = new Pool({
    user: 'user',
    host: 'postgres',
    database: 'ForestServiceDB',
    password: 'pass',
    port: '5432'});

// ----------------------- Constants ----------------------- //
const PORT = 8081;
const HOST = '0.0.0.0';
//const HOST = '127.0.0.1';
//const PORT = 3000;

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
    //TODO: handle query parameters run query on database
    // TODO: store results in CSV
    res.render('results', {title: 'Report Summary Data Retrieved'});
});

// Transect
app.get('/report-transects', (req, res) => {
    res.render('index', {title: 'Transect Query Builder'});
});

app.post('/report-transects', (req, res) => {
    logger.log.debug('transect query posted');
    //TODO: handle query parameters run query on database
    // TODO: store results in CSV
    res.render('results', {title: 'Transect Data Retrieved'});
});

//Full report (report summary data AND transect data)
app.get('/full-report', (req, res) => {
    res.render('index', {title: 'Full Report'});
});

app.post('/full-report', (req, res) => {
    logger.log.debug('full report query posted');
    //TODO: handle query parameters run query on database
    // TODO: store results in CSV
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

    var b = req.body;

    const query = {
        text:'INSERT INTO report (writeup_no, photo_no, examiner, transect_no, slope, aspect, ' +
            'elevation_min, elevation_max, forest, ranger_district, allotment, location, livestock, ' +
            'type_designation, type_des_trend, date, total_grass, total_forb, total_browse, desirable, ' +
            'intermediate, least_desirable, composition, production, forage_condition, ground_cover, erosion, ' +
            'soil_condition, browse_condition, trend, notes)' +
            'VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18 ,$19, $20, ' +
            '$21, $22, $23, $24, $25, $26, $27, $28, $29, $30, $31)',

        values: [b['writeup_no'], b['photo_no'], b['examiner'], b['transect_nos'], b['slope'], b['aspect'],
            b['elevation_min'], b['elevation_max'], b['forest'], b['ranger_dist'], b['allotment'], b['location'],
            b['livestock'], b['type_des'], b['type_des_trend'], b['date'], b['grass_tot'], b['forbes_tot'], b['browse_tot'],
            b['desireable_sum'], b['intermediate_sum'], b['l_desireable_sum'], b['composition'],
            b['production'], b['forage_condition'], b['ground_cover'], b['erosion'], b['soil_condition'],
            b['browse_condition'], b['apparent_trend'], b['additional_notes']]
            //add to table first b['desireable_perc'], b['intermediate_perc'], b['l_desireable_perc'],

    };

    pool.connect()
        .then(client => {
            return client.query(query)
                .then(res => {
                    console.log(res.rows[0]);
                    const jsonData = JSON.parse(JSON.stringify(res.rows));
                    console.log("jsonData", jsonData);
                })
                .catch(e => {
                    client.release();
                    console.log(e.stack);
                })
        }).finally(() => pool.end());


    // var q2 = "SELECT * from report";
    // client.query(q2, (err, res) => {
    //     if (err) {
    //         console.log(err.stack);
    //     } else {
    //         console.log(res.rows);
    //         console.log('we are selecting the reports! Hopefully our new one is in the db');
    //     }
    // });

    // TODO: store results in CSV
    res.render('results', {title: 'Datasheet processed'});
});

//EX running query on PostGres DB
app.get('/example', function (req, response) {

  pool.connect()
      .then(client => {
        return client.query("SELECT * FROM cover")
            .then(res => {
              console.log(res.rows[0]);
                const jsonData = JSON.parse(JSON.stringify(res.rows));
                console.log("jsonData", jsonData);
              response.send(res.rows);
            })
            .catch(e => {
              client.release();
              console.log(e.stack);
            })
      }).finally(() => pool.end());	
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
                //var csv = json2csv({ data: jsonData});
				//var path = "./data-export.csv";
               // fastcsv
              //      .writeToPath(path, jsonData, { headers: true })
              //      .on("finish", function() {
              //          console.log("Write to bezkoder_mysql_fastcsv.csv successfully!");
              //      })
                    //.pipe(ws);
              response.send(res.rows);
            })
            .catch(e => {
              client.release();
              console.log(e.stack);
            })
      }).finally(() => pool.end());	
});

const json2csv = require('json2csv').parse;

//EX running query on PostGres DB
app.get('/datacsv', function (req, response) {

  pool.connect()
      .then(client => {
        return client.query("SELECT * FROM cover")
            .then(res => {
              //client.release();
              console.log(res.rows[0]);
                  var fields = ['lead', 'salutation', 'fname','lname','title','email','mobile','rating','address','city','state','zcode','company','industry','empSize','lsource'];
                const jsonData = JSON.parse(JSON.stringify(res.rows));
                console.log("jsonData", jsonData);
                  var csv = json2csv({ data: jsonData, fields: fields });
                  var path='./'+Date.now()+'.csv'; 
                   fs.writeFile(path, csv, function(err,data) {
                    if (err) {throw err;}
                    else{ 
                      response.download(path); // This is what you need
                    }
                }); 
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

