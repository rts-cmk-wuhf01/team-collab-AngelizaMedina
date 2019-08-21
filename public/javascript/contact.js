
// JavaScript Document

document.addEventListener ("DOMContentLoaded", () => {



	document.querySelector('#sendButton').addEventListener('click', (event) => {

		let contactFormElement = document.querySelector('#contactForm');

		//Prevents the default event, which is to submit the form
		//Reason we prevent is because we want to validate the function before the default event takes place
		event.preventDefault();

		const returnMessageElement = document.querySelector("#testContainer");

		let name = contactFormElement.name.value;
		let surname = contactFormElement.surname.value;
		let eamil = contactFormElement.email.value;
		let subject = contactFormElement.subject.value;
		let message = contactFormElement.message.value;

		

		if(typeof name == 'undefined' || name === ""){
			returnMessageElement.innerHTML = "Please fill in your name!";
			contactFormElement.name.focus();

			console.log('Testing our clientside validation');

		}else{

			contactFormElement.submit();
		}

	});


}); //Ends DOMContentLoaded event 
	