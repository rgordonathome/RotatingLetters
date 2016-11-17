import Foundation

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 */
var inputToProcess : String = ""

// Loop until valid input is received
while inputToProcess == "" {
    
    // Show the prompt
    print("Ask the question here? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        
        
        
        
    }
    
}

/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 (e.g.: in past exercises, verify that a number is prime, for example).
 
 Of course, what goes here in your code varies, depending on the problem you are solving.
 
 */

// Add 'process' code below....
print("replace with process logic")


/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 */

// Add 'output' code below... replace what is here as needed.
print("The input given was: \(inputToProcess)")

