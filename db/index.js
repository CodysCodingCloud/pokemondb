const db = require("./conn");
const { query1 } = require("./query");
const dotenv = require("dotenv").config();
async function init() {
	try {
		await db.connect();
		console.log("Connection has been established successfully.");
	} catch (error) {
		console.error("Unable to connect to the database:");
		console.log(error);
	} finally {
		try {
			// const result = await db.query(query1);
		} catch (error) {
			console.error("Error running query:");
			console.log(error);
		} finally {
			await db.end();
			console.log("pg connection closed");
		}
	}
}
init();
