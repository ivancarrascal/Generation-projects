// Write a method that takes a string and returns the number of vowels
// in the string. You may assume that all the letters are lower cased.
// You can treat "y" as a consonant.
//
// Difficulty: easy.

function count_vowels(string) {
	var stringArray = string.split("");
	var count = 0;
	for ( var i = 0; i <= stringArray.length; i ++) {
		if (stringArray[i] === "a" || stringArray[i] === "e" || stringArray[i] === "i" || stringArray[i] === "o" || stringArray[i] === "u" || stringArray[i] === "y") {
			count ++;
		} else {
		}
	}
	return count;
}

//ProWay
function count_vowels(string) {
	return string.match(/[aeiou]/g).length;
}

// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( count_vowels('abcd') === 1 )
console.log( count_vowels('color') === 2 )
console.log( count_vowels('colour') === 3 )
console.log( count_vowels('cecilia') === 4 )
