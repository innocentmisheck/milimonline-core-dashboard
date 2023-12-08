import mysql from "mysql2"

const db=mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"greenswi_milimo_marketplace"
});

export default db;
