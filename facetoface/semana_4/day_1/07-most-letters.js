// Write a method that takes a string in and returns true if the letter
// "z" appears within three letters **after** an "a". You may assume
// that the string contains only lowercase letters.
//
// Difficulty: medium.

function nearby_az( string ){
	var independentValue = "a";
	var dependentValue = "z";
	var stringLngth = string.length
	for (var i = 0; i <= stringLngth; i ++) {
		if (string[i] === dependentValue && (string[i - 1] === independentValue || string[i - 2] === independentValue || string[i - 3] === independentValue)) {
			return true;
		} else {
			return false;
		}
	}
}

// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( nearby_az('a') === false )
console.log( nearby_az('z') === false )
console.log( nearby_az('za') === false )
console.log( nearby_az('baz') === true )
console.log( nearby_az('abz') === true )
console.log( nearby_az('abcz') === true )
console.log( nearby_az('abcdz') === false )
