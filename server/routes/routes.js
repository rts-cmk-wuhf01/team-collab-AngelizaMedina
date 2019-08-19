
const mysql = require('../config/mysql');

module.exports = (app) => {


	/*------------------------------------------------------- Index ----------------------------------------------------*/

	app.get('/', async (req, res, next) => {

		let db = await mysql.connect();

		res.render('index');
		
		db.end();

	}); //app.get('/'.. end)

	/*---------------------------------------------------- Index - end --------------------------------------------------*/

	/*-------------------------------------------------------- Info -----------------------------------------------------*/

	app.get('/info/:movie_id', async (req, res, next) => {

		let db = await mysql.connect();

		res.render('info');
		
		db.end();

	}); //app.get('/'.. end)

	/*------------------------------------------------------ Info end ---------------------------------------------------*/

	/*------------------------------------------------------ Contact ----------------------------------------------------*/

	app.get('/contact', async (req, res, next) => {

		let db = await mysql.connect();

		res.render('contact');
		
		db.end();

	}); //app.get('/'.. end)

	/*----------------------------------------------------- Contact end -------------------------------------------------*/

	app.post('/contact', async (req, res, next) => {

		let name = req.body.name;

		let email = req.body.email;

		let subject = req.body.subject;

		let message = req.body.message;

		let return_message = [];

		//Variables to validate the different fields in the 'Contact' form
		const numbers = /^[0-9]+$/; //All the numbers from 0-9
		var atpos = email.indexOf("@"); //To check if the @ is placed correctly
	 	var dotpos = email.lastIndexOf("."); //To check if the last . is placed correctly


		if (typeof name == 'undefined' || name == '' ||
				typeof email == 'undefined' || email == '' ||
				typeof subject == 'undefined' || subject == '' ||
				typeof message == 'undefined' || message == '') {

			return_message.push('Please fill out all the fields!');

			res.render('contact', {
				'return_message': return_message
			});

		}else if(name.match(numbers)){

			return_message.push('No numbers in the name field!');

			res.render('contact', {
				'return_message': return_message
			});

		}else if(atpos < 1 || dotpos < atpos + 2 || email.length <= dotpos + 2){

			return_message.push('Please enter a valid email');

			res.render('contact', {
				'return_message': return_message
			});

		}else{

			let db = await mysql.connect();

			let result = await db.execute(`
				INSERT INTO messages (
					message_name,
					message_email,
					message_subject,
					message_message
				) 
				VALUES 
					(?, ?, ?, ?)`, [
						name,
						email,
						subject,
						message
					]
			);
		
			db.end();

			res.redirect('/contact');

		}
		
	}); // app.post('/contact'...) END


} //module.exports END