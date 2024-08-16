////// Console Messages:
// All echoed text should be CAPITALIZED,
// with the exception of function/module/variable names.

// ~~~Errors~~~ 
// ERROR: [location name]: [Error decription] 

// ~~~Status messages~~
// General messages:
// STATUS: [Status message]

// Function/module entry notifications:
// STATUS: ENTERED: [location name]



////// Naming
// ~~~Abbreviations~~~
// distance -> dist
// length -> L
// outer diameter -> OD
// inner diameter -> ID
// width -> W
// height -> H
// depth -> D
// flat-to-flat distance (eg. hex) -> F2F
// number of holes -> nHoles

// ~~~Edge cases~~~
// Variable already exists in scope
// -> repeat name eg. [L] -> [LL] -> [LLL] etc.
//    Preference should be given to names that aren't verbatim from
//    external sources.

// Attribute is not relevant for a particular part variant
// -> value should be "NA"
//  -> program should read NA and throw appropriate error