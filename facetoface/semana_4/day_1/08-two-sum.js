// Write a method that takes an array of numbers. If a pair of numbers
// in the array sums to zero, return the positions of those two numbers.
// If no pair of numbers sums to zero, return `null`.
//
// Difficulty: medium.

function two_sum( nums ) {
	for (i = 0; i <= nums.length; i ++) {
		for (j = 0; j <= nums.length; j ++) {
			if (nums[i] + nums[j] === 0) {
				console.log(i, j);
			} else {
				return "nill";
			}
		}
	}
}

// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( two_sum([1, 3, 5, -3]) === [1, 3] )
console.log( two_sum([1, 3, 5, -3]) === [1, 3] )
console.log( two_sum([1, 3, 0, 0]) === [2, 3] )
console.log( two_sum([1, 3, 0, 6]) === null )
console.log( two_sum([1, 3, 5]) === null) )
