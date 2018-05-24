//
//  main.swift
//  DealOrNoDeal
//

import Foundation

// INPUT
// Global variable to use later in program
var countOfBriefcasesOpened = 3

// Now get the actual number of briefcases that were opened during the game
// e.g.: write the rest of the INPUT section
while true {
    
    //Prompt
    print("How many briefcases have been opened?")
    
    //Wait for input, check for nil
    guard let givenInput = readLine() else{
        continue
    }
    //Check for integer
    guard let givenInteger = Int(givenInput) else{
        continue
    }
    //Check for range
    if givenInteger <= 0 || givenInteger > 10 {
        continue
    }
    //Assign the value to the global variable
    countOfBriefcasesOpened = givenInteger
    break
}

// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire
var average = 0
var caseOpen = 0
var arrayOfCases : [Int] = [100,500,1000,5000,10000,25000,50000,100000,500000,1000000]
// Collect the list of what briefcases were opened here
for counter in 1...countOfBriefcasesOpened {
    
    var sum = 0
    
    // Ask what briefcase was opened in this turn
    print("Briefcase opened, in turn \(counter), was:")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    while true {
        guard let givenInput = readLine() else {
            // If someone enters nil input, just skip to the next line
            continue
        }
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        if givenInteger <= 0 || givenInteger > 10  {
            continue
            
        }
        caseOpen = givenInteger
        break
    }
    
    
    // What was provided?
    arrayOfCases.insert(0, at: caseOpen - 1)
    arrayOfCases.remove(at: caseOpen)
    print(arrayOfCases)
    // Implement the rest of your logic here...
    
    for integer in arrayOfCases {
        sum += integer
    }
    
    var countCase = countOfBriefcasesOpened
    if countCase == 10 {
        countCase += 1
    }
    average = sum / (10 - countCase)
}
print(average)

var offer = 0
while true {
    
    //Prompt
    print("What was the banker’s offer?")
    
    //Wait for input, check for nil
    guard let givenInput = readLine() else{
        continue
    }
    //Check for integer
    guard let givenInteger = Int(givenInput) else{
        continue
        
    }
    if givenInteger < 10 {
        continue
    }
    offer = givenInteger
    break
}

if offer > average {
    print("deal")
}else {
    print("no deal")
}




