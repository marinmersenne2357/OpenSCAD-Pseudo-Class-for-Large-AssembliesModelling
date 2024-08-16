use <GeneralFunctions/ReturnAtt.scad>
use <GeneralFunctions/ShorthandFunctions.scad>

//you go 50 I go 35, in a school zone...

/////////////////////// Rail variant attribute declarations

function SFU1204() =     
  [
  ["Info","SFU1204 Ball Screw and Nut"], //local part description
  ["Diameter",12], //ballscrew diameter
  ["Pitch",4], //ballscrew pitch
  ["BallDiameter",2.381], //diameter of ball bearings
  ["FlangeType","<=32"], //size class of flange (F2F)
  ["D1",22], //barrel section diameter closest to flange
  ["D2",21.5], //barrel section diameter furthest from flange
  ["D3",42], //flange outer diameter
  ["D4",32], //flange mounting holes circle diameter
  ["D5",4.8], //flange mounting holes diameter
  ["L1",35], //total length including flange
  ["L2",10], //barrel section length adjacent to flange
  ["B",8], //flange thickness
  ["G","M6"], //grease fitting thread
  ["H1",30], //F2F of the flange
  ["DynamicLoad",4], //dynamic load rating
  ["StaticLoad",3.6], //static load rating
  ["ED",8], //screw end diameters
  ["ELK",15], //end length of the fixed k-side
  ["ELF",10], //end length of the free f-side
  ["ELF_minusCirclip",7.9], //end length of the free side not including circlip
  ["circlipWidth",0.8], //width of the free end circlip
  ["thread","M10x1"], //ballscrew thread specification
  ["threadD",10], //ballscrew thread barrel diameter
  ["threadL",16], //ballscrew threaded length
  ["threadBarrelL",39],  //ballscrew thread barrel length
  
  ["d1_BK",10], //BK10 hole diameter
  ["L_BK",25], //BK10 mounting block length
  ["L1_BK",5], //BK10 faceplate protruding length
  ["L2_BK",29], //BK10 distance from bearing end to nut end
  ["L3_BK",5], //BK10 rear bearing support length
  ["C1_BK",13], //BK10 mounting hole longitudinal spacing
  ["C2_BK",6], //BK10 mounting hole longitudinal distance from edge of mounting block
  ["B_BK",60], //BK10 overall width of mounting block
  ["H_BK",39], //BK10 overall height
  ["b_BK",30], //BK10 distance of screw axis from side of mounting block
  ["h_BK",22], //BK10 height of screw axis
  ["B1_BK",34], //BK10 width of the bearing retaining section
  ["H1_BK",32.5], //BK10 height of the mounting block
  ["E_BK",15], //BK10 ertical distance between the face mounting holes
  ["P_BK",46], //BK10 mounting hole transverse spacing
  ["d2_BK",5.5], //BK10 face mounting hole diameter
  ["X_BK",6.6], //BK10 vertical thru hole diameter
  ["Y_BK",10.8], //BK10 counterbore diameter
  ["Z_BK",5], //BK10 counterbore depth
  
  ["d1_BF",8], //BF10 hole diameter
  ["L_BF",20], //BF10 mounting block length
  ["B_BF",60], //BF10 overall width of mounting block
  ["H_BF",39], //BF10 overall height
  ["b_BF",30], //BF10 distance of screw axis from side of mounting block
  ["h_BF",22], //BF10 height of screw axis
  ["B1_BF",34], //BF10 width of the bearing retaining section
  ["H1_BF",32.5], //BF10 height of the mounting block
  ["E_BF",15], //BF10 ertical distance between the face mounting holes
  ["P_BF",46], //BF10 mounting hole transverse spacing
  ["d2_BF",5.5], //BF10 face mounting hole diameter
  ["X_BF",6.6], //BF10 vertical thru hole diameter
  ["Y_BF",10.8], //BF10 counterbore diameter
  ["Z_BF",5], //BF10 counterbore depth
  ];

function SFU1605() =     
  [
  ["Info","SFU1605 Ball Screw and Nut"], //local part description
  ["Diameter",16], //ballscrew diameter
  ["Pitch",5], //ballscrew pitch
  ["BallDiameter",3.175], //diameter of ball bearings
  ["FlangeType","<=32"], //size class of flange (F2F)
  ["D1",28], //barrel section diameter closest to flange
  ["D2",27.8], //barrel section diameter furthest from flange
  ["D3",48], //flange outer diameter
  ["D4",38], //flange mounting holes circle diameter
  ["D5",5.5], //flange mounting holes diameter
  ["L1",42], //total length including flange
  ["L2",10], //barrel section length adjacent to flange
  ["B",10], //flange thickness
  ["G","M6"], //grease fitting thread
  ["H1",40], //F2F of the flange
  ["DynamicLoad",7.65], //dynamic load rating
  ["StaticLoad",13.2], //static load rating
  ["ED",10], //screw end diameters
  ["ELK",15], //end length of the fixed k-side
  ["ELF",11], //end length of the free f-side
  ["ELF_minusCirclip",8], //end length of the free side not including circlip
  ["circlipWidth",1.15], //width of the free end circlip
  ["thread","M12x1"], //ballscrew thread specification
  ["threadD",12], //ballscrew thread barrel diameter
  ["threadL",12], //ballscrew threaded length
  ["threadBarrelL",39],  //ballscrew thread barrel length
  
  ["d1_BK",10], //BK12 hole diameter
  ["L_BK",25], //BK12 mounting block length
  ["L1_BK",5], //BK12 faceplate protruding length
  ["L2_BK",29], //BK12 distance from bearing end to nut end
  ["L3_BK",5], //BK12 rear bearing support length
  ["C1_BK",13], //BK12 mounting hole longitudinal spacing
  ["C2_BK",6], //BK12 mounting hole longitudinal distance from edge of mounting block
  ["B_BK",60], //BK12 overall width of mounting block
  ["H_BK",43], //BK12 overall height
  ["b_BK",30], //BK12 distance of screw axis from side of mounting block
  ["h_BK",25], //BK12 height of screw axis
  ["B1_BK",34], //BK12 width of the bearing retaining section
  ["H1_BK",32.5], //BK12 height of the mounting block
  ["E_BK",18], //BK12 ertical distance between the face mounting holes
  ["P_BK",46], //BK12 mounting hole transverse spacing
  ["d2_BK",5.5], //BK12 face mounting hole diameter
  ["X_BK",6.6], //BK12 vertical thru hole diameter
  ["Y_BK",10.8], //BK12 counterbore diameter
  ["Z_BK",1.5], //BK12 counterbore depth
  
  ["d1_BF",10], //BF12 hole diameter
  ["L_BF",20], //BF12 mounting block length
  ["B_BF",60], //BF12 overall width of mounting block
  ["H_BF",43], //BF12 overall height
  ["b_BF",30], //BF12 distance of screw axis from side of mounting block
  ["h_BF",25], //BF12 height of screw axis
  ["B1_BF",34], //BF12 width of the bearing retaining section
  ["H1_BF",32.5], //BF12 height of the mounting block
  ["E_BF",18], //BF12 ertical distance between the face mounting holes
  ["P_BF",46], //BF12 mounting hole transverse spacing
  ["d2_BF",5.5], //BF12 face mounting hole diameter
  ["X_BF",6.6], //BF12 vertical thru hole diameter
  ["Y_BF",10.8], //BF12 counterbore diameter
  ["Z_BF",1.5], //BF12 counterbore depth
  ];


///////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////////




module BallScrew(
  request="", //specify what the module should output
  attributes="", //import part attributes from module call
  screwL=10, //length of the ballscrew
  NDFE=0, //nut distance from end of thread
  AStep=10,
  screw=false,nut=false,fixed=false,free=false //items for assembly
  ){                 
  // echo("STATUS: ENTERED: LinearRail");
  Diameter = ReturnAtt("Diameter",attributes);
  Pitch = ReturnAtt("Pitch",attributes);
  BallDiameter = ReturnAtt("BallDiameter",attributes);
  D1 = ReturnAtt("D1",attributes);
  D2 = ReturnAtt("D2",attributes);
  D3 = ReturnAtt("D3",attributes);
  D4 = ReturnAtt("D4",attributes);
  D5 = ReturnAtt("D5",attributes);
  L1 = ReturnAtt("L1",attributes);
  L2 = ReturnAtt("L2",attributes);
  B = ReturnAtt("B",attributes);
  H1 = ReturnAtt("H1",attributes);
  ED = ReturnAtt("ED",attributes);
  ELK = ReturnAtt("ELK",attributes);
  ELF = ReturnAtt("ELF",attributes);
  ELF_minusCirclip = ReturnAtt("ELF_minusCirclip",attributes); 
  circlipWidth = ReturnAtt("circlipWidth",attributes);
  threadD = ReturnAtt("threadD",attributes);              
  threadL = ReturnAtt("threadL",attributes);
  threadBarrelL = ReturnAtt("threadBarrelL",attributes);

  d1_BK = ReturnAtt("d1_BK",attributes);
  L_BK = ReturnAtt("L_BK",attributes);
  L1_BK = ReturnAtt("L1_BK",attributes);
  L2_BK = ReturnAtt("L2_BK",attributes);
  L3_BK = ReturnAtt("L3_BK",attributes);
  C1_BK = ReturnAtt("C1_BK",attributes);
  C2_BK = ReturnAtt("C2_BK",attributes);
  B_BK = ReturnAtt("B_BK",attributes);
  H_BK = ReturnAtt("H_BK",attributes);
  b_BK = ReturnAtt("b_BK",attributes);
  h_BK = ReturnAtt("h_BK",attributes);
  B1_BK = ReturnAtt("B1_BK",attributes);
  H1_BK = ReturnAtt("H1_BK",attributes);
  E_BK = ReturnAtt("E_BK",attributes);
  P_BK = ReturnAtt("P_BK",attributes);
  d2_BK = ReturnAtt("d2_BK",attributes);
  X_BK = ReturnAtt("X_BK",attributes);
  Y_BK = ReturnAtt("Y_BK",attributes);
  Z_BK = ReturnAtt("Z_BK",attributes);
  
  d1_BF = ReturnAtt("d1_BF",attributes);
  L_BF = ReturnAtt("L_BF",attributes);
  B_BF = ReturnAtt("B_BF",attributes);
  H_BF = ReturnAtt("H_BF",attributes);
  b_BF = ReturnAtt("b_BF",attributes);
  h_BF = ReturnAtt("h_BF",attributes);
  B1_BF = ReturnAtt("B1_BF",attributes);
  H1_BF = ReturnAtt("H1_BF",attributes);
  E_BF = ReturnAtt("E_BF",attributes);
  P_BF = ReturnAtt("P_BF",attributes);
  d2_BF = ReturnAtt("d2_BF",attributes);
  X_BF = ReturnAtt("X_BF",attributes);
  Y_BF = ReturnAtt("Y_BF",attributes);
  Z_BF = ReturnAtt("Z_BF",attributes);


  if (request == "GENERATE BALLSCREW ASSEMBLY"){
    echo("STATUS: BALLSCREW ASSEMBLY REQUESTED");
    GenerateBallscrewAssembly();
  }
  
  if (request == "GENERATE BALLSCREW"){
    echo("STATUS: BALLSCREW REQUESTED");
    GenerateBallscrew();
  }
  else if (request == "GENERATE NUT"){
    echo("STATUS: BALLSCREW NUT REQUESTED");
    GenerateNut();
  }
  else if (request == "GENERATE BK BLOCK"){
    echo("STATUS: BALLSCREW BK BLOCK REQUESTED");
    GenerateBK();
  }
  else if (request == "GENERATE BF BLOCK"){
    echo("STATUS: BALLSCREW BF BLOCK REQUESTED");
    GenerateBF();
  }
  else if (request == "NUT HOLE PATTERN"){
    echo("STATUS: BALLSCREW NUT HOLE PATTERN REQUESTED");
    NutHolePattern()children();
  }
  else{
    echo("ERROR: BallScrew: UNRECOGNIZED REQUEST INPUT");
  }
  
  module GenerateBallscrewAssembly(){
    if (screw == true)R(y=-360*(NDFE/Pitch))BallScrew(request="GENERATE BALLSCREW",
          attributes=attributes,
          screwL=screwL,
          AStep=AStep);

    if (nut == true)T(y=ELK+threadBarrelL+NDFE){
      BallScrew(request="GENERATE NUT",
      attributes=attributes);
    }
    
    if (fixed == true)T(y=ELK+threadBarrelL,z=-h_BK){
      BallScrew(request="GENERATE BK BLOCK",
      attributes=attributes);
    }
    if (free == true)T(y=ELK+threadBarrelL+screwL+L_BF,z=-h_BK){
      BallScrew(request="GENERATE BF BLOCK",
      attributes=attributes);
    }
  }
  

  module GenerateBallscrew(){
    R(x=-90){
      //end section
      color("grey")cylinder(d=ED,h=ELK);
      //threaded section for fixed bearing
      color("silver")T(z=ELK)cylinder(d=threadD,h=threadL);
      //bearing thread barrel
      color("grey")T(z=ELK+threadL)cylinder(d=threadD,h=threadBarrelL-threadL);
      //ball groove section
      color("silver")T(z=ELK+threadL+threadBarrelL-threadL){
        difference(){
          cylinder(d=Diameter-2,h=screwL);
          }
          echo("AStep",AStep);
          nSteps = ((screwL/Pitch)*(360/AStep));  //calculated number of steps
          HStep = screwL/nSteps; //height step
          polyH = 2; //height of the thread polyhedrons
          polyStepUp = HStep; //step up of the polyhedron edge for allignment
          for (i=[0:nSteps-(360/AStep)]){
            T(z=i*HStep)R(z=AStep*i){
              polyhedron(Points,Faces);
              Faces = [
              [0,1,2,3],  // bottom
              [4,5,1,0],  // front
              [7,6,5,4],  // top
              [5,6,2,1],  // right
              [6,7,3,2],  // back
              [7,4,0,3]]; // left
              
              Points = [
              [0,0,0], //0
              [Diameter/2,0,0], //1
              [Diameter/2*cos(AStep),Diameter/2*sin(AStep),polyStepUp], //2
              [0,0,polyStepUp], //3
              [0,0,polyH], //4
              [Diameter/2,0,polyH], //5
              [Diameter/2*cos(AStep),Diameter/2*sin(AStep),polyStepUp+polyH], //6
              [0,0,polyStepUp+polyH] //7
              ];
            }
        }
        
      }
      //end section with circlip groove
      color("grey")T(z=ELK+threadL+threadBarrelL-threadL+screwL){
        difference(){
          cylinder(d=ED,h=ELF);
          T(z=ELF_minusCirclip)difference(){
            cylinder(d=ED+0.01,h=circlipWidth);
            cylinder(d=ED-2,h=circlipWidth);
          }
        }
      }
    }
  }


  //////////////////////////////////////////////////////bk block
  module GenerateBK(){
    color("slategrey"){
      difference(){
        BlockWithoutScrewHole();
        T(y=0.005,z=h_BK)R(x=90)cylinder(d=Diameter,h=L_BK+L1_BK+0.01);
      }
    }
    
  module BlockWithoutScrewHole(){
    difference(){
      T(x=-B_BK/2,y=-L_BK)cube([B_BK,L_BK,H1_BK]);
      FaceHolePattern();
      BK_TopHolePattern()BK_TopHoleProfile();
    }
    //bearing block section
    T(z=-(H_BK-h_BK)*2+H_BK){
      linear_extrude(height=B1_BK){
        T(x=-B1_BK/2,y=-L_BK)square([B1_BK,L_BK]);
      }
      linear_extrude(height=B1_BK-0.5){
        T(x=-B1_BK/2,y=-L_BK-L1_BK)
        square([B1_BK,L1_BK]);
      }
    }
  }
    
    module FaceHolePattern(){
      for (i1=[0:1]){
        for (i2=[-1:2:1])T(x=P_BK/2*i2){
          T(x=0,y=0.005,z=h_BK-E_BK*i1)R(x=90)cylinder(d=d2_BK,h=L_BK+0.01);
        }
      }
    }
  }
  
  module BK_TopHolePattern(){
    for (i1=[-1:2:1])T(x=P_BK/2*i1,y=-L_BK/2){
      for (i2=[0:1]){
        T(y=-C1_BK/2 + C1_BK*i2,z=-0.005)children();
      }
    }
}
  
  module BK_TopHoleProfile(){
    cylinder(d=X_BK,h=H1_BK-Z_BK+0.01);
    T(z=H1_BK-Z_BK)cylinder(d=Y_BK,h=Z_BK+0.01);
  }
  
  /////////////////////////////////////////////////////////bf block
  module GenerateBF(){
    color("slategrey"){
      difference(){
        BlockWithoutScrewHole();
        //thru hole for ballscrew
        T(y=0.005,z=h_BF)R(x=90)cylinder(d=Diameter,h=L_BF+0.01);
      }
    }
    
  module BlockWithoutScrewHole(){
    difference(){
      T(x=-B_BF/2,y=-L_BF)cube([B_BF,L_BF,H1_BF]);
      FaceHolePattern();
      BF_TopHolePattern()BF_TopHoleProfile();
    }
    //bearing block section
    T(z=-(H_BF-h_BF)*2+H_BF){
      linear_extrude(height=B1_BF){
        T(x=-B1_BF/2,y=-L_BF)square([B1_BF,L_BF]);
      }
    }
  }
    
    module FaceHolePattern(){
      for (i1=[0:1]){
        for (i2=[-1:2:1])T(x=P_BF/2*i2){
          T(y=0.005,z=h_BF-E_BF*i1)R(x=90)cylinder(d=d2_BF,h=L_BF+0.01);
        }
      }
    }
  }
  
  module BF_TopHolePattern(){
    for (i1=[-1:2:1])T(x=P_BF/2*i1,y=-L_BF/2){
      T(z=-0.005)children();
    }
}
  
  module BF_TopHoleProfile(){
    cylinder(d=X_BF,h=H1_BF-Z_BF+0.01);
    T(z=H1_BF-Z_BF)cylinder(d=Y_BF,h=Z_BF+0.01);
  }
  
  ////////////////////////////////////////////////////////generate nut
  module GenerateNut(){
    color("SlateGrey")R(x=-90){
      difference(){
        rotate_extrude(angle=360)polygon([
        [Diameter/2,0],
        [D3/2,0],
        [D3/2,B],
        [D1/2,B],
        [D1/2,B+L2],
        [D2/2,B+L2],
        [D2/2,L1],
        [Diameter/2,L1]]);
        T(z=-0.005)NutHolePattern()NutHoleProfile();
        for (i=[-1:2:1])T(x=(H1/2+(D3-H1)/4)*i,z=B/2-0.01)cube([(D3-H1)/2,D3,B+0.03],center=true);
      }
    }
  }

  
  
  module NutHolePattern(){
    for (i1=[0:1])R(z=180*i1){
      for (i2=[0:2])R(z=45+45*i2){
        T(x=D4/2)children();
      }
    }
  }

  module NutHoleProfile(){
    cylinder(d=D5,h=B+0.01);
  }

}


  

  

  

  
  
  
  
  
  