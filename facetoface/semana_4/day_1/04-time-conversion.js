// Write a method that will take in a number of minutes, and returns a
// string that formats the number into `hours:minutes`.
//
// Difficulty: easy.

//My way (not result)
function time_conversion( minutes ) {
	var hours = 0
	 var resultTime = hours + ":" + minutes

	if (minutes < 60) {
		hours = "0";
		console.log(resultTime);
	} else if ( minutes >= 60 ) {
		hours ++;
		minutes -= 60;
		console.log(resultTime);
	}
	return resultTime;
}

//Way 2:
function time_conversion( minutes ) {
	var hours = Math.floor(minutes / 60);
	minutes = minutes % 60;

	return minutes > 9 ? hours+":"+minutes : hours+":0"+minutes;
}

//Way 3:
function time_conversion(digits) {
  var hours = 0;
  var minutes = 0;
  if(digits > 60) {
      hours++;
      digits -= 60;
      while(digits >= 60) {
        hours++;
        digits -= 60;
      }
      minutes = digits;
  	} else {
      minutes = digits;
  	}
  	return hours + ":" + minutes;
}

//Way 4:
function time_conversion( result ) {
    hour = 0;
    minutes = 0;
    if (result > 60){
        hour ++;
        result -= 60;
    	while (result >= 60) {
	        hour ++;
	        result -= 60;
     	}
    minutes = result;
   	}
    else {
        minutes = result;
    }
    if (minutes < 10) {
       minutes = "0" + minutes;
   	}
     return hour + ":" + minutes;
}
// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( time_conversion(15) === '0:15' )
console.log( time_conversion(150) === '2:30' )
console.log( time_conversion(360) === '6:00' )
