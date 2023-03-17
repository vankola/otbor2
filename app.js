const http = require('http');
///подключение к базе данных
const pg = require('pg');
const config = {
    user: "postgres", 
    host: "localhost", 
    port: 5432,
    database: 'dbm'
};
let data1 = "";
let otbd = []
let ot = []
//const db = require("./mdb.js");
//console.log(db);
//запуск сервера
const PORT = 8000;
const server = http.createServer((req, res) => {

    console.log('Server request');
    console.log(req.url, req.method);
    res.setHeader( 'Content-Type','application/text');
    //res. setHeader ('Content-Typ]e', 'text/html');
    
     // прием запроса от постмана
    req.on("data", chunk => {
        data1 += chunk;
    }); 
    req.on("end", () => {
        console.log(data1);
        res.write("Данные успешно получены");
    }); 
    // Взаимодействие с базой данных
    console.log(data1)
    
    const client = new pg.Client(config);
    client.connect( queryDatabase());

    function queryDatabase() {

        const query = data1; //полученный ответ с сервера
        console.log(query)
        client.query(query) //вставляем как команду для полученние данных из бд
            .then(res => {

                const rows = res.rows;
                rows.map(row => {
                    otbd.push(JSON.stringify(row));                
                });  
                for (let i = 0; i < otbd.length; i++) {
                    ot.push(otbd[i])
                }
                console.log(ot)
                console.log(otbd)       
                //process.exit();
            })                
        }
  
    //res.write(ot)
   
    
 
    //res.end(ot);
   
});


server.listen(PORT, 'localhost', (error) => {
    error ? console.log(error) : console.log(`listening port ${PORT}`);
});

