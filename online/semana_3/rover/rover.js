var Rover = {
	position: [0,0],
	direction: 'N'
}

function moveRover(rover){
	switch(Rover.direction){
		case 'N':
		Rover.position[0]++;
		break;
		case 'S':
		Rover.position[0]--;
		break;
		case 'E':
		Rover.position[1]++;
		break;
		case 'W':
		Rover.position[1]--;
		break;

	}

}
function viewPosition(rover){
	document.getElementById("posX").innerHTML = Rover.position[0];
	document.getElementById("posY").innerHTML = Rover.position[1];
}
function clickUP(rover){
	Rover.direction = 'N';
	if(Rover.position[0] === 10){
		alert("The rover exit of the planet, please change the direction");
		
	}
	else{
		moveRover();
		viewPosition();
	}
}
function clickDown(rover){
	Rover.direction = 'S';
	if(Rover.position[0] === -10){
		alert("The rover exit of the planet, please change the direction");
	}
	else{
		moveRover();
		viewPosition();
	}
}
function clickLeft(rover){
	Rover.direction = 'W';
	if(Rover.position[1] === -10){
		alert("The rover exit of the planet, please change the direction");
	}
	else{
		moveRover();
		viewPosition();
	}
}
function clickRight(rover){
	Rover.direction = 'E';
	if(Rover.position[1] === 10){
		alert("The rover exit of the planet, please change the direction");
	}
	else{
	moveRover();
	viewPosition();
	}
}
