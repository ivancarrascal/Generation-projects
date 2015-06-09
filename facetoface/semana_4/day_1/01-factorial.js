// Write a method that takes an integer `n` in; it should return
// n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
//
// As a special case, `factorial(0) == 1`.
//
// Difficulty: easy.

// Way 1:
function factorial(n) {
	var result = n;
	if ( n === 0 ) {
		result = 1
		return (result);
	} else {
		var a = 1;
		for (var i = n -1; i >= 1; i --) {
			result *= i
		}
		return result;
	}
}

//Way 2:
function factorial(n) {
	var result = 1;
	if ( var i = 1; n <= 0; i ++) {
		result *= i
	}
	return (result);
}

//Way 3
function factorial(n) {
	var i = 1, product = 1;
	while (i <= n) {
		product *= i;
		i++;
	}
	return product;
}

// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( factorial(0) === 1 )
console.log( factorial(1) === 1 )
console.log( factorial(2) === 2 )
console.log( factorial(3) === 6 )
console.log( factorial(4) === 24 )
