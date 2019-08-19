
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
	
		let db = await mysql.connect();

		if (typeof name == 'undefined' || name == '' ||
				typeof email == 'undefined' || email == '' ||
				typeof subject == 'undefined' || subject == '' ||
				typeof message == 'undefined' || message == '') {

			return_message.push('Please fill out all the fields!');

			res.render('contact', {
				'return_message': return_message
			});

		}else{

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