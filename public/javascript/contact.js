
// JavaScript Document

document.addEventListener ("DOMContentLoaded", () => {



	document.querySelector('#sendButton').addEventListener('click', (event) => {

		let contactFormElement = document.querySelector('#contactForm');

		//Prevents the default event, which is to submit the form
		//Reason we prevent is because we want to validate the function before the default event takes place
		event.preventDefault();

		//Form input values
		let nameValue = contactFormElement.name.value;
		let surnameValue = contactFormElement.surname.value;
		let emailValue = contactFormElement.email.value;
		let subjectValue = contactFormElement.subject.value;
		let messageValue = contactFormElement.message.value;


		//Page elements
		const returnMessageContainerClientElement = document.querySelector("#returnMessageContainerClient");
		const returnMessageH1ClientElement = document.querySelector("#returnMessageH1Client");
		const returnMessageH2ClientElement = document.querySelector("#returnMessageH2Client");
		const redirectMessageContainerElement = document.querySelector("#redirectMessageContainer");

		//Place in the HTML where the cloned element will be placed
		let returnMessagesListClientElement = document.querySelector ("#returnMessagesListClient");

		//The returnMessage li template
		let returnMessageTemplateElement = document.querySelector ("#returnMessageTemplate .returnMessage");

		// Form Input elements
		let nameElement = contactFormElement.name;
		let surnameElement = contactFormElement.surname;
		let emailElement = contactFormElement.email;
		let subjectElement = contactFormElement.subject;
		let messageElement = contactFormElement.message;


		// Variable to store the different errors
		let returnMessages = [];


		// Variables to validate the different fields in the 'Contact' form

		const numbers = /^[0-9]+$/; // All the numbers from 0-9
		const atpos = emailValue.indexOf("@"); // To check if the @ is placed correctly
		const dotpos = emailValue.lastIndexOf("."); // To check if the last . is placed correctly

		// Check if 'name' has been filled out
		if(typeof nameValue == 'undefined' || nameValue === ""){
			nameElement.focus();
			returnMessages.push('"Name" field has been left empty');
		}

		// Check if 'name' contains any numbers
		if(nameValue.match(numbers)){
			nameElement.focus();
			returnMessages.push('"Name" field must not contain any numbers');
		}

		// Check if 'surname' has been filled out
		if(typeof surnameValue == 'undefined' || surnameValue == ''){
			surnameElement.focus();
			returnMessages.push('"Surname" field has been left empty');
		}

		// Check if 'surname' contains any numbers
		if(surnameValue.match(numbers)){
			surnameElement.focus();
			returnMessages.push('"Surname" field must not contain any numbers');
		}

		// Check if 'email' has been filled out
		if (typeof emailValue == 'undefined' || emailValue == ''){
			emailElement.focus();
			returnMessages.push('"Email" field has been left empty');
		}

		// Check if the 'email' is valid
		if(atpos < 1 || dotpos < atpos + 2 || emailValue.length <= dotpos + 2){
			emailElement.focus();
			returnMessages.push('Please provide a valid "Email"');
		}

		// Check if 'subject' has been filled out
		if(typeof subjectValue == 'undefined' || subjectValue == ''){
			subjectElement.focus();
			returnMessages.push('"Subject" field has been left empty');
		}

		// Check if 'message' has been filled out
		if(typeof messageValue == 'undefined' || messageValue == ''){
			messageElement.focus();
			returnMessages.push('"Message" field has been left empty');
		}

		// Don't send the message to the database if any of the above statements are true
		if(returnMessages.length > 0){
			event.preventDefault();

			// Empty the element from previous returnMessages
			returnMessagesListClientElement.innerHTML = "";

			returnMessageContainerClientElement.style.display = "block";

			// Give the following message to the user
			returnMessageH1ClientElement.innerHTML = "Something went wrong...";
			returnMessageH2ClientElement.innerHTML = "Check following:";

			returnMessages.forEach(returnMessage => {

				//The value of productElement changes for everytime the code is executed
				let returnMessageElement;

				//cloneNode(true), means that the childElements will be cloned too
				returnMessageElement = returnMessageTemplateElement.cloneNode(true);

				let returnMessageTxt = document.createTextNode(returnMessage);

				// Inserts our cloned HTML element inside our returnMessagesListClientElement (ul)
				returnMessagesListClientElement.appendChild(returnMessageElement);

				// Insert returnMessageTxt before the styled exclamation mark 
				returnMessageElement.prepend(returnMessageTxt);

			});

		// If nothing went wrong, send the message
		}else if (typeof return_messages == 'undefined' || return_messages.length == 0){

			// Empty the element from possibly previous returnMessages
			returnMessagesListClientElement.innerHTML = "";

			returnMessageContainerClientElement.style.display = "block";
			
			// Give the following message to the user
			returnMessageH1ClientElement.innerHTML = "Your message has been sent!";
			returnMessageH2ClientElement.innerHTML = "We will get back to you as soon as possible";
			redirectMessageContainerElement.style.display = "block";
			redirectMessageContainerElement.innerHTML = "You will be redirected in less than 5 sec..."

			contactFormElement.submit();
		}

	}); //eventListener('click'...) end



}); //Ends DOMContentLoaded event 
	