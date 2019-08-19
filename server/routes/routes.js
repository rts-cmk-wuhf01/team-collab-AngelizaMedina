
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

		let return_messages = [];


		//Variables to validate the different fields in the 'Contact' form

		const numbers = /^[0-9]+$/; //All the numbers from 0-9
		var atpos = email.indexOf("@"); //To check if the @ is placed correctly
	 	var dotpos = email.lastIndexOf("."); //To check if the last . is placed correctly


		// Check if 'name' has been filled out
		if (typeof name == 'undefined' || name == ''){
			return_messages.push('Please provide your name');
		} 

		// Check if 'name' contains any numbers
		if (name.match(numbers)){
			return_messages.push('Numbers in the name field is not allowed');
		}
		
		// Check if 'email' has been filled out
		if (typeof email == 'undefined' || email == ''){
			return_messages.push('Please provide your email');
		}

		// Check if the 'email' is valid
		if(atpos < 1 || dotpos < atpos + 2 || email.length <= dotpos + 2){
			return_messages.push('Please provide a valid email');
		}

		// Check if 'subject' has been filled out
		if(typeof subject == 'undefined' || subject == ''){
			return_messages.push('Please provide a subject');
		}

		// Check if 'message' has been filled out
		if(typeof message == 'undefined' || message == ''){
			return_messages.push('Please write a message');
		}

		// Don't send the message to the database if any of the above statements are true
		if(return_messages.length > 0){

			res.render('contact', {
				'return_messages': return_messages,
				'values': req.body
			});

		// Send the message to the database
		}else if(return_messages.length == 0){

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

		} // else if(...) END
		
	}); // app.post('/contact'...) END


} //module.exports END