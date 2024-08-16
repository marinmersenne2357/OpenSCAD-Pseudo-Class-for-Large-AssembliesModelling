use <GeneralFunctions/ReturnAtt.scad>
use <GeneralFunctions/ShorthandFunctions.scad>

/////////////////////// section variant attribute declarations

function SHS_50x50x6() =     
  [
  ["Info","50x6mm SHS steel profile"], //local part description
  ["X_Major",50], //x outer dimension
  ["Y_Major",50], //y outer dimension
  ["thickness",6], //wall thickness
  ["outerRadius",9], //corner fillet radius
  ["innerRadius",6], //corner fillet radius
  ];
  
function SHS_75x75x6() =     
  [
  ["Info","75x6mm SHS steel profile"], //local part description
  ["X_Major",75], //x outer dimension
  ["Y_Major",75], //y outer dimension
  ["thickness",4], //wall thickness
  ["outerRadius",9], //corner fillet radius
  ["innerRadius",6], //corner fillet radius
  ];

function RHS_75x50x4() =    
  [
  ["Info","75x50x6mm SHS steel profile"], //local part description
  ["X_Major",75], //x outer dimension
  ["Y_Major",50], //y outer dimension
  ["thickness",4], //wall thickness
  ["outerRadius",6], //corner fillet radius
  ["innerRadius",3], //corner fillet radius
  ];


///////////////////////////////////////////////////////////////////////////////
//RHS("GENERATE LENGTH",SHS_50x50x6(),300);
///////////////////////////////////////////////////////////////////////////////////




module RHS(request="", //specify what the module should output
                  attributes="", //import part attributes from module call
                  sectionL=200 //length of the section
                  ){
                    
  X_Major = ReturnAtt("X_Major",attributes);
  Y_Major = ReturnAtt("Y_Major",attributes);
  thickness = ReturnAtt("thickness",attributes);
  outerRadius = ReturnAtt("outerRadius",attributes);
  innerRadius = ReturnAtt("innerRadius",attributes);

  if (request == "GENERATE LENGTH"){
    echo("STATUS: RHS SECTION REQUESTED");
    GenerateLength();
  }
  else if (request == "RHS PROFILE"){
    echo("STATUS: RHS PROFILE REQUESTED");
    Profile();
  }
  else{
    echo("ERROR: RHS: UNRECOGNIZED REQUEST INPUT");
  }
  
  
  module GenerateLength(){
    color("Silver")difference(){
      R(x=90,z=180)linear_extrude(height=sectionL)Profile();
    }
  }
  
  module Profile(){
    difference(){
      square([X_Major,Y_Major],center=true);
      square([X_Major-2*thickness,Y_Major-2*thickness],center=true);
      for (n=[0:3])R(z=90*n)T(x=X_Major/2,y=Y_Major/2)Fillet(5);
    }
    for (n=[0:3])R(z=90*n)T(x=X_Major/2-thickness,y=Y_Major/2-thickness)Fillet(5);
  }

}
































