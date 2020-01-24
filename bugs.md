Bugs
1. On initial running of the app, pressing enter does not add a new thread. 
Action Plan: I'm going to investigate the ViewController responsible for this behavior and write a unit test for enter being pressed with a non nill value in the CreateThread textfield.  

2. Error Decoding Message threads: 2020-01-24 11:20:56.061501-0500 Message Board[1059:21444] Error decoding message threads from JSON data: typeMismatch(Swift.Array<Any>, Swift.DecodingError.Context(codingPath: [], debugDescription: "Expected to decode Array<Any> but found a dictionary instead.", underlyingError: nil))

