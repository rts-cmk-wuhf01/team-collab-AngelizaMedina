
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
		let [info] = await db.execute('SELECT * FROM movies');

		res.render('info', {
			'info': info
		});
		
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


		if (typeof name == 'undefined' || name == ''){
			return_messages.push('Please provide your name');
		} 

		if (name.match(numbers)){
			return_messages.push('Numbers in the name field is not allowed');
		}
		
		if(typeof email == 'undefined' || email == ''){
			return_messages.push('Please provide your email');
		}

		if(atpos < 1 || dotpos < atpos + 2 || email.length <= dotpos + 2){
			return_messages.push('Please provide a valid email');
		}

		if(typeof subject == 'undefined' || subject == ''){
			return_messages.push('Please provide a subject');
		}

		if(typeof message == 'undefined' || message == ''){
			return_messages.push('Please write a message');
		}

			res.render('contact', {
				'return_messages': return_messages,
				'values': req.body
			});

		//Send the message to our database
		if(return_messages.length == 0){

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