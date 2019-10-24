const expect = require('chai').expect;
var request = require('request');

describe('First test', () => {
    it('Should assert true to be true', () => {
        expect(true).to.be.true;
    });
});


describe('Report Summary tests', () => {

it('should return 200', function(done) {
    request('http://localhost:3000/report-summary' , function(error, response, body) {
        expect(response.statusCode).to.equal(200);
        done();
    });
});

});

describe('transect tests', () => {

it('should return 200', function(done) {
    request('http://localhost:3000/transect' , function(error, response, body) {
        expect(response.statusCode).to.equal(200);
        done();
    });
});

});

describe('full-report tests', () => {

it('should return 200', function(done) {
    request('http://localhost:3000/full-report' , function(error, response, body) {
        expect(response.statusCode).to.equal(200);
        done();
    });
});

});

describe('full-report tests', () => {

it('should return 200', function(done) {
    request('http://localhost:3000/full-report' , function(error, response, body) {
        expect(response.statusCode).to.equal(200);
        done();
    });
});

});
