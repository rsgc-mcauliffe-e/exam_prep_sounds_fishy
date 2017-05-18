import Foundation

/*

ORGANIZING YOUR SOLUTION

A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.

The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?

*/

/*

INPUT

Be sure that your implementation of this section discards all the possible bad inputs the user could provide.

Make use of your test plan and algorithm to ensure your code is complete.

*/
var inputToProcess : [Int] = [0,0,0,0]
var output = String()


// Loop until valid input is received
for ii in 0...3 {
	while inputToProcess[ii] == 0 {
		
		// Show the prompt
		print("Reading \(ii+1)? ", terminator: "")
		
		// Get the user's input
		var input = readLine()
		
		// Use optional binding to see if the string can be unwrapped (to see if it is not nil)
		if let notNilInput = input {
			if let anInteger = Int(notNilInput){
				if anInteger > 0{
					inputToProcess[ii] = anInteger
				}
			}
		}
	}
}
/*

PROCESS

Here is where you implement the logic that solves the problem at hand.

Make use of your test plan and algorithm to ensure your code is complete.

*/

// Add 'process' code below....
if (inputToProcess[0] < inputToProcess[1] && inputToProcess [1] < inputToProcess[2] && inputToProcess[2] < inputToProcess[3]){
		output = "Fish Rising"
} else if (inputToProcess[3] < inputToProcess[2] && inputToProcess[2] < inputToProcess [1] && inputToProcess[1] < inputToProcess[0]){
		output = "Fish Diving"
} else if (inputToProcess[3] == inputToProcess[2] && inputToProcess[2] == inputToProcess [1] && inputToProcess[1] == inputToProcess[0]){
	output = "Fish At Constant Depth"
} else {
	output = "No Fish"
}

/*

OUTPUT

Here is where you report the results of the 'process' section above.

Make use of your test plan and algorithm to ensure your code is complete.

*/

// Add 'output' code below... replace what is here as needed.
print(output)
