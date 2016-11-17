import Foundation

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 */
var inputToProcess : String = ""

// Loop until valid input is received
while inputToProcess == "" {
    
    // Show the prompt
    print("Input word is? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        
        // Verify that the input is not an empty and less than or equal to 30 characters long
        if notNilInput != "" && notNilInput.characters.count <= 30 {
            
            // Iterate over the input and make sure there are only uppercase characters
            var validInput = true
            for scalar in notNilInput.unicodeScalars {
                // A = 65 as a Unicode scalar value, and Z = 90 as a Unicode scalar value
                // If the value is outside this range, it's not valid
                if scalar.value < 65 || scalar.value > 90 {
                    validInput = false
                    break
                }
            }
            // Only proceed if all characters were uppercase
            if validInput == true {
                inputToProcess = notNilInput
            }
            
        }
        
    }
    
}

/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 (e.g.: in past exercises, verify that a number is prime, for example).
 
 Of course, what goes here in your code varies, depending on the problem you are solving.
 
 */

// These are the letters not permitted
var invalidLetters = "ABCDEFGJKLMPQRTUVWY"

var validSignLetters = true // Assume word is valid until proven otherwise
for character in inputToProcess.characters {
    
    // Convert the character to a string
    var characterAsString = String(character)
    
    // See if the current letter can be found within the string of letters not permitted
    if let result = invalidLetters.range(of: characterAsString) {
        validSignLetters = false
        break // stop since an invalid letter was found
    }
    
}

/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 */
// Tell the user if the word is valid or not
if validSignLetters == true {
    print("YES")
} else {
    print("NO")
}
