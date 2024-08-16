use <GeneralFunctions/ReturnAtt.scad>

/////////////////////// Rail variant attribute declarations

function HGR15_Att() =     
  [
  ["Info","HGR15 15mm Linear Rail"], //local part description
  ["H",28], //total height from base of rail to upper mounting surface of carriage
  ["H1",4.3], //rail plinth height
  ["N",9.5], //lateral distance from lower side of carriage to rail side
  ["W",34], //width of carriage
  ["B",26], //lateral mounting hole spacing
  ["B1",4], //lateral mounting hole center to edge of carriage distance
  ["C_CA",26], //longitudinal mounting hole spacing (CA carriage)
  ["C_HA","NA"], //Does not exist
  ["L1_CA",39.4], //longitudinal length of upper mounting face (CA carriage)
  ["L1_HA","NA"], //Does not exist
  ["L_CA",61.4], //overall longitudinal length of CA carriage (not inc. grease nipple)
  ["L_HA",61.4], //Does not exist
  ["K1_CA",10], //medial hole longitudinal distance from mounting hole (CA)
  ["K1_HA",10], //Does not exist
  ["K2",4.85], //end of upper mounting surface to center of side hole longitudinal distance
  ["G",5.3], //length of the grease nipple
  ["Mxl","M4x5"], //mounting hole specification
  ["MHPilot",3.3], //pilot drill diameter for mounting hole
  ["T",6], //height of the upper mounting saddle component
  ["H2",7.95], //upper mounting surface to center of grease nipple vertical distance
  ["H3",7.7], //upper mounting surface to center of side mounting hole vertical distance
  ["Wr",15], //width of the rail
  ["Hr",15], //height of the rail
  ["D",7.5], //rail counterbore diameter
  ["h",5.3], //rail counterbore depth
  ["d",4.5], //rail thru hole diameter
  ["P",60], //rail mounting hole spacing
  ["E",20] //rail distance of hole from end
  ];

function HGR20_Att() =     
  [
  ["Info","HGR20 20mm Linear Rail"], //local part description
  ["H",30], //total height from base of rail to upper mounting surface of carriage
  ["H1",4.6], //rail plinth height
  ["N",12], //lateral distance from lower side of carriage to rail side
  ["W",44], //width of carriage
  ["B",32], //lateral mounting hole spacing
  ["B1",6], //lateral mounting hole center to edge of carriage distance
  ["C_CA",36], //longitudinal mounting hole spacing (CA carriage)
  ["C_HA",50], //longitudinal mounting hole spacing (HA carriage)
  ["L1_CA",50.5], //longitudinal length of upper mounting face (CA carriage)
  ["L1_HA",65.2], //longitudinal length of upper mounting face (HA carriage)
  ["L_CA",77.5], //overall longitudinal length of CA carriage (not inc. grease nipple) 
  ["L_HA",92.2], //overall longitudinal length of HA carriage (not inc. grease nipple) 
  ["K1_CA",12.25], //medial hole longitudinal distance from mounting hole (CA)
  ["K1_HA",12.6], //medial hole longitudinal distance from mounting hole (HA)
  ["K2",6], //end of upper mounting surface to center of side hole longitudinal distance
  ["G",12], //length of the grease nipple
  ["Mxl","M5x6"], //mounting hole specification (reference)
  ["MHPilot",4.2], //pilot drill diameter for mounting hole
  ["T",8], //height of the upper mounting saddle component
  ["H2",6], //upper mounting surface to center of grease nipple vertical distance
  ["H3",6], //upper mounting surface to center of side mounting hole vertical distance
  ["Wr",20], //width of the rail
  ["Hr",17.5], //height of the rail
  ["D",9.5], //rail counterbore diameter
  ["h",8.5], //rail counterbore depth
  ["d",6], //rail thru hole diameter
  ["P",60], //rail mounting hole spacing
  ["E",20] //rail distance of hole from end
  ];

function HGR25_Att() =     
  [
  ["Info","HGR20 25mm Linear Rail"], //local part description
  ["H",40], //total height from base of rail to upper mounting surface of carriage
  ["H1",5.5], //rail plinth height
  ["N",12.5], //lateral distance from lower side of carriage to rail side
  ["W",48], //width of carriage
  ["B",35], //lateral mounting hole spacing
  ["B1",6.5], //lateral mounting hole center to edge of carriage distance
  ["C_CA",35], //longitudinal mounting hole spacing (CA carriage)
  ["C_HA",50], //longitudinal mounting hole spacing (HA carriage)
  ["L1_CA",58], //longitudinal length of upper mounting face (CA carriage)
  ["L1_HA",78.6], //longitudinal length of upper mounting face (HA carriage)
  ["L_CA",84], //overall longitudinal length of CA carriage (not inc. grease nipple) 
  ["L_HA",104.6], //overall longitudinal length of HA carriage (not inc. grease nipple) 
  ["K1_CA",15.7], //medial hole longitudinal distance from mounting hole (CA)
  ["K1_HA",18.5], //medial hole longitudinal distance from mounting hole (HA)
  ["K2",6], //end of upper mounting surface to center of side hole longitudinal distance
  ["G",12], //length of the grease nipple
  ["MxL","M6x8"], //mounting hole specification (reference)
  ["MHPilot",5], //pilot drill diameter for mounting hole
  ["T",8], //height of the upper mounting saddle component
  ["H2",10], //upper mounting surface to center of grease nipple vertical distance
  ["H3",9], //upper mounting surface to center of side mounting hole vertical distance
  ["Wr",23], //width of the rail
  ["Hr",22], //height of the rail
  ["D",11], //rail counterbore diameter
  ["h",9], //rail counterbore depth
  ["d",7], //rail thru hole diameter
  ["P",60], //rail mounting hole spacing
  ["E",20] //rail distance of hole from end
  ];


///////////////////////////////////////////////////////////////////////////////
//
//LinearRail("GENERATE CARRIAGE",
//          ReturnAtt("",HGR20_Att()),
//          railL=300,HDFE=20,
//          carriageType="CA")
//            circle(d=10);


///////////////////////////////////////////////////////////////////////////////////




module LinearRail(request="", //specify what the module should output
                  attributes="", //import part attributes from module call
                  railL=200, //length of the linear rail
                  HDFE=0, //hole distance from end of rail
                  carriageType="CA", //type of carriage (CA/HA)
                  CDFE=0, //carriage distance from end of rail
                  carriageSpacing=0,
                  nCarriages=1){ //distance of carriage from end of rail
                    
  // echo("STATUS: ENTERED: LinearRail");
  H = ReturnAtt("H",attributes);
  H1 = ReturnAtt("H1",attributes);
  N = ReturnAtt("N",attributes);
  W = ReturnAtt("W",attributes);
  B = ReturnAtt("B",attributes);
  B1 = ReturnAtt("B1",attributes);
  C_CA = ReturnAtt("C_CA",attributes);
  C_HA = ReturnAtt("C_HA",attributes);
  L1_CA = ReturnAtt("L1_CA",attributes);
  L1_HA = ReturnAtt("L1_HA",attributes);
  L_CA = ReturnAtt("L_CA",attributes);
  L_HA = ReturnAtt("L_HA",attributes);
  K1_CA = ReturnAtt("K1_CA",attributes);
  K1_HA = ReturnAtt("K1_HA",attributes);
  K2 = ReturnAtt("K2",attributes);
  G = ReturnAtt("G",attributes);
  Mxl = ReturnAtt("Mxl",attributes);
  MHPilot = ReturnAtt("MHPilot",attributes);
  T = ReturnAtt("T",attributes);
  H2 = ReturnAtt("H2",attributes);
  H3 = ReturnAtt("H3",attributes);
  Wr = ReturnAtt("Wr",attributes);
  Hr = ReturnAtt("Hr",attributes);
  D = ReturnAtt("D",attributes);
  h = ReturnAtt("h",attributes);
  d = ReturnAtt("d",attributes);
  P = ReturnAtt("P",attributes);
  E = ReturnAtt("E",attributes);
  
  // set the correct values for the selected carriage type
  variantList = carriageType == "CA" ? [C_CA,L1_CA,L_CA,K1_CA] : 
  carriageType == "HA" ? [C_HA,L1_HA,L_HA,K1_HA] : 
  echo("ERROR: LinearRail: [UNRECOGNIZED CARRIAGE TYPE]");
  C = variantList[0];
  L1 = variantList[1];
  L = variantList[2];
  K1 = variantList[3];

  if (request == "GENERATE RAIL"){
    echo("STATUS: LINEAR RAIL REQUESTED");
    GenerateRail();
  }
  else if (request == "RAIL PROFILE"){
    echo("STATUS: RAIL PROFILE REQUESTED");
    RailProfile();
  }
  else if (request == "RAIL HOLE PATTERN"){
    echo("STATUS: RAIL HOLE PATTERN REQUESTED");
    RailHolePattern()children();
  }
  else if (request == "GENERATE CARRIAGE"){
    echo("STATUS: LINEAR RAIL CARRIAGE REQUESTED");
    GenerateCarriage();
  }
  else if (request == "CARRIAGE HOLE PATTERN"){
    echo("STATUS: LINEAR RAIL CARRIAGE REQUESTED");
    GenerateCarriage();
  }
  else if (request == "GENERATE RAIL WITH CARRIAGE"){
    echo("STATUS: LINEAR RAIL WITH CARRIAGE REQUESTED");
    GenerateRailWithCarriage();
  }
  else{
    echo("ERROR: LinearRail: UNRECOGNIZED REQUEST INPUT");
  }
  
  ///////////////Combined functions
  module GenerateRailWithCarriage(){
    LinearRail("GENERATE RAIL",
                attributes,
                railL=railL,
                HDFE=HDFE);
    for (i=[0:nCarriages-1])translate([0,L/2+CDFE+(carriageSpacing+L)*i,H]){
      LinearRail("GENERATE CARRIAGE",
                attributes,
                carriageType=carriageType);
    }
  }
  
  
  ///////////////Carriage functions
  module GenerateCarriage(){
    difference(){
      rotate([90,0,0])CarriageProfile();
      translate([-B/2,-C/2,-T+0.01])CarriageHolePattern()CarriageHoleProfile();
    }
    
    module CarriageHoleProfile(){
      cylinder(d=MHPilot,h=T);
    }
    module CarriageProfile(){
      color("grey")translate([0,0,-L1/2]){
        linear_extrude(height=L1)SectionProfile();
      }
      color("green")for (i=[-1:2:1]){
        capLength = (L-L1)/2;
        translate([0,0,-capLength/2+(L1/2+capLength/2)*i]){
          linear_extrude(height=(L-L1)/2)scale(0.99)SectionProfile();
        }
      }
      module SectionProfile(){
          difference(){
          topChamfer = 2;
          for (n=[0:1])rotate([180*n,0,180*n]){
            polygon([
            [W/2-topChamfer,0],
            [W/2,-topChamfer],
            [W/2,-H+H1],
            [0,-H+H1],
            [0,0],
            ]);
          }
          translate([0,-H,0])scale(1.05){
            LinearRail(request="RAIL PROFILE", attributes=attributes);
          }
        }
    }
    }
  }
  
  module CarriageHolePattern(){
    for (i=[0:1])translate([0,i*C,0])for (j=[0:1])translate([j*B,0,0])children();
  } 
  
  
  
  
  
  ///////////////Linear rail functions
  
  module GenerateRail(){
    color("Silver")difference(){
      rotate([90,0,180])linear_extrude(height=railL)RailProfile();
      translate([0,HDFE])RailHolePattern()RailHoleProfile();
    }
    
    module RailHoleProfile(){
      translate([0,0,-0.01])cylinder(d=d,h=Hr);
      translate([0,0,Hr-h+0.01])cylinder(d=D,h=h);
    }
  }
  
  
  module RailHolePattern(){
    nHoles = floor((railL-HDFE)/P) + 1;
    for (i=[0:nHoles-1])translate([0,i*P,0])children();
  }

  module RailProfile(){
    //reference plane rail end bottom surface middle
    for (n=[0:1])rotate([180*n,0,180*n]){
      polygon([
      [0,0],
      [Wr/2,0],
      [Wr/2,H1],
      [H1+2,H1+3],
      [H1+2,H1+5],
      [Wr/2,H1+8],
      [Wr/2,H1+9],
      [H1+2,Hr],
      [0,Hr]
      ]);
    }
  }
}


  




























  

  

  
  
  
  
  
  