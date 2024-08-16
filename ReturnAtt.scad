function ReturnAtt(input,attributes) = 
  // If the get attribute function is called with an empty request (""), 
  // return the entire attribute array for the specified part. 
  // Otherwise if a name is specified, return the matching
  // value if the name exists, otherwise return an error message.
  
  // Search returns the 1st level index of the requested input,
  // which is fed back into the array to output the value pair of that input,
  // from which the second item is selected ([1]). [0] is needed because search
  // returns the pair in a [1x1] vector form.
  // A second logical statement returns an error message if the item cannot be found.
  
  // Example call: echo(ReturnAtt("h1",HGR20_Att()));
  
  input == "" ?
  attributes : 
  attributes[search([input],attributes)[0]][1] == undef ?
  "ERROR: FUNCTION ReturnAtt: REQUESTED ITEM NOT FOUND IN PART ATTRIBUTES" : 
  attributes[search([input],attributes)[0]][1];

