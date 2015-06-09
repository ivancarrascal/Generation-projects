// Write a method that will take a string as input, and return a new
// string with the same letters in reverse order.


function reverse( string ) {	
	var chocolate = "";
	for (var i = string.length; i >= 0; i --) {
		chocolate += string.charAt(i);
	}
	return chocolate;
}

// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( reverse("") === "" )
console.log( reverse("a") === "a" )
console.log( reverse("abc") === "cba" )
