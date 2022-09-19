

const express = require('express'); // make flexible Node.js web application framework
var app = express(); // make variable
const mysql = require('mysql'); // make Node.js work with database (MYSQL)
const bodyparser = require('body-parser'); // Node.js body parsing middleware.
app.use(bodyparser.json());
app.use(bodyparser.urlencoded({
    extended: true
}));


app.use(function (req, res, next) {

    // Website you wish to allow to connect
    res.setHeader('Access-Control-Allow-Origin', '*');

    // Request methods you wish to allow
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

    // Request headers you wish to allow
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

    // Set to true if you need the website to include cookies in the requests sent
    // to the API (e.g. in case you use sessions)
    res.setHeader('Access-Control-Allow-Credentials', true);

    // Pass to next layer of middleware
    next();
});


app.all('*', function(req, res,next) {
    /**
     * Response settings
     * @type {Object}
     */
    var responseSettings = {
        "AccessControlAllowOrigin": req.headers.origin,
        "AccessControlAllowHeaders": "Content-Type,X-CSRF-Token, X-Requested-With, Accept, Accept-Version, Content-Length, Content-MD5,  Date, X-Api-Version, X-File-Name",
        "AccessControlAllowMethods": "POST, GET, PUT, DELETE, OPTIONS",
        "AccessControlAllowCredentials": true
    };

    /**
     * Headers
     */
    res.header("Access-Control-Allow-Credentials", responseSettings.AccessControlAllowCredentials);
    res.header("Access-Control-Allow-Origin",  responseSettings.AccessControlAllowOrigin);
    res.header("Access-Control-Allow-Headers", (req.headers['access-control-request-headers']) ? req.headers['access-control-request-headers'] : "x-requested-with");
    res.header("Access-Control-Allow-Methods", (req.headers['access-control-request-method']) ? req.headers['access-control-request-method'] : responseSettings.AccessControlAllowMethods);

    if ('OPTIONS' == req.method) {
        res.send(200);
    }
    else {
        next();
    }


});

//connecting to database 
const mc = mysql.createPool({
    host: '81.16.28.103',
    user: 'u957169187_juCK0o',
    password: 'IDR4hbT*r2W',
    database: 'u957169187_juCK0o',
    multipleStatements: true
});


// open broswer on this -> "localhost:4000/"
var port = process.env.PORT || 	4000
console.log("Running on port:" + port)
app.listen(port);

app.get('/HomePage', (request, response) => {
    mc.query(`SELECT *  FROM HomePage`, function (error, results, fields) {
        if (error) throw error;
        return response.send(results);
    });});
    app.get('/CategoryHomePage', (request, response) => {
        mc.query(`SELECT *  FROM HomePage`, function (error, results, fields) {
            if (error) throw error;
            return response.send(results);
        });});g
        app.get('/NearbyHomePage', (request, response) => {
            mc.query(`SELECT *  FROM nearbyRes_homePage`, function (error, results, fields) {
                if (error) throw error;
                return response.send(results);
            });});
            app.get('/SearchPage', (request, response) => {
                mc.query(`SELECT *  FROM SearchPage`, function (error, results, fields) {
                    if (error) throw error;
                    return response.send(results);
                });});



               


// POST

app.post('/add', function (req, res) {

    
         var data = {
        "user":req.body.user,
        "phonenumber":req.body.phonenumber,
        "sherecode":req.body.sherecode,
                  
       
    }



    mc.query('INSERT INTO user_log SET ?', data, function (error, results, fields) {
        if (error) {

            res.send({
                "code": 404,
                "MSG": "تمام"
            });

            try {
                
            } catch (err) {
               if (err.code === 'ER_DUP_ENTRY') {
                   //handleHttpErrors(SYSTEM_ERRORS.USER_ALREADY_EXISTS);
               } else {
                   //handleHttpErrors(err.message);
                }
            }

        } else {
            console.log('The solution is: ', results);
            if (error) throw error;
            res.send({
                "code": 200,
                "success": "done"
            });
        }
    });

 
    
  

});

app.post('/dnascolarship/check/', (req, res) => {

    let data={
        "email":req.body.email,
        "password":req.body.password,

    }

    let sql1 = ` 
    SELECT DNA.*,DNA_EC.password,sum(DNA.points) as pointss
    from DNA,DNA_EC 
    where DNA_EC.email = DNA.email AND DNA_EC.code = '${data.email}' and password = '${data.password}'
    GROUP by DNA.email
    `;

    mc.query(sql1, function (error, results, fields) {
        console.log("/dnascolarship/check/")
        if (error) {
            console.log(error);
            return res.send(error);
        }

        else {
            console.log(data)
            return res.send(results);
        }
    });

});











