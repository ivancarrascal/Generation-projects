// Write a method that takes in a string. Return the longest word in
// the string. You may assume that the string contains only letters and
// spaces.
//
// You may use the String `split` method to aid you in your quest.
//
// Difficulty: easy.

//Way 1:
function longest_word(sentence) {
	var words = sentence.split(" ");
	var wordsLength = words.length - 1;
	var lgth = 0;
	var longest = "";
		for ( i = 0; i <= wordsLength; i ++ ) {
			lgth = words[i].length;
			longest = words[i];
		}
	return longest;
}

//Way 2
function longest_word(sentence) {
	
	array = sentence.split(" ");

	var word = array.reduce( function (a, b) {
		if (a.length > b.length) {
			return a;
		} else {
			return b;
		}
	})
	return word;
}
// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( longest_word( 'short longest' ) === 'longest' )
console.log( longest_word( 'one' ) === 'one' )
console.log( longest_word( 'abc def abcde' ) === 'abcde' )
