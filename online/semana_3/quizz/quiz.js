
var user = {};
var responses = [];

function question1(){
	var name = prompt("What is your name?");
	user.name = name;

}
function question2(){
	var answer = prompt("Convert your name in lowercase? Type Y/N");
		if(answer === 'y'){
			user.name.toLowerCase();
		}
		else if(answer === 'n'){
			console.log("Return to program");
		}
		else{
			console.log("Please type only y or n");
		}

}
function question3(){
	var answer3 = prompt("What language are you learning now?");
	answer3.toLowerCase();
	if(answer3 === 'javascript'){
		user.language = answer3;
		console.log("Yes, you are the best in Javascript!");
	}
	else{
		console.log("No, your language is not " + question3 + " Please try again");
		question3();
	}

}
function question4(){
	var answer4 = prompt("Please enter your color in this range: Green, Red, Blue");
	answer4.toLowerCase();
	switch(answer4){
		case 'red':
		user.color = answer4;
		console.log("You are tryed RED");
		break;
		case 'blue':
		user.color = anwer4; 
		console.log('You are tryed BLUE');
		break;
		case 'green':
		console.log('You are tryed GREEN');
		break;
		default:
		console.log("Please, enter a valid color");
		question4();
		break;
	}
}
function printResult(){
	console.log("My name is " + user.name + "i`m learning " + user.language + ' language' + 'My color is : ' + user.color);

}
question1();
question2();
question3();
question4();
printResult();
