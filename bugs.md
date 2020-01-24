Bugs
Bug 1: Creating Threads
1. On initial running of the app, pressing enter does not add a new thread. 
Action Plan: I'm going to investigate the ViewController responsible for this behavior and write a unit test for enter being pressed with a non nill value in the CreateThread textfield.   

Fix: Fix threadTitle to != "", add resume() in networking code for ThreadCreation. 


Bug 2: Decoding Error

2. Error Decoding Message threads: 2020-01-24 11:20:56.061501-0500 Message Board[1059:21444] Error decoding message threads from JSON data: typeMismatch(Swift.Array<Any>, Swift.DecodingError.Context(codingPath: [], debugDescription: "Expected to decode Array<Any> but found a dictionary instead.", underlyingError: nil))

Action Plan: This looks like a model error, I'm going to investigate any structs and their keys for mismatches to what the server might respond with.  Ok, in the fetchMessages function. I highly suspect that the error is due to firebase assigning a string value to its decoded data in a list, making it effectively a dictionary.  

Fix:  modify expected data to account for firebase returning a dictionary, strip the UUID keys out by using .values to return a list of Message Structs like our program expects. 

UI

1. Send message button is not working

Action Plan: Go find the ViewController responsible for sending  a message in a thread and investigate. 

Fix:  typo in  stringly typed value in prepare for segue function. change "addmesage" to  "addMesssage""

