use <GeneralFunctions/ReturnAtt.scad>
use <GeneralFunctions/ShorthandFunctions.scad>
use <LinearRail.scad>
use <BallScrew.scad>


//actual rail end lengths (E) are ~33 and ~27mm.
X_LowerRailL = 720;
X_UpperRailL = 780;
Y_RailL = 720;



//translate([0,0,10])LinearRail("GENERATE RAIL WITH CARRIAGE",
//                                ReturnAtt("",HGR20_Att()),
//                                railL=X_UpperRailL,
//                                HDFE=30,
//                                CDFE=100,
//                                nCarriages=2,
//                                carriageType="CA",
//                                carriageSpacing=10);

module XRailTop(){
  LinearRail("GENERATE RAIL WITH CARRIAGE",
                                ReturnAtt("",HGR25_Att()),
                                railL=X_UpperRailL,
                                HDFE=30,
                                CDFE=100,
                                nCarriages=2,
                                carriageType="CA",
                                carriageSpacing=10);
}
module XRailBottom(){
  LinearRail("GENERATE RAIL WITH CARRIAGE",
                                ReturnAtt("",HGR25_Att()),
                                railL=X_LowerRailL,
                                HDFE=30,
                                CDFE=100,
                                nCarriages=2,
                                carriageType="CA",
                                carriageSpacing=10);
}
module YRail(){
  LinearRail("GENERATE RAIL WITH CARRIAGE",
                                ReturnAtt("",HGR25_Att()),
                                railL=Y_RailL,
                                HDFE=30,
                                CDFE=100,
                                nCarriages=2,
                                carriageType="CA",
                                carriageSpacing=10);
}

module XBallscrew(){                              
  BallScrew(request="GENERATE BALLSCREW ASSEMBLY",
            attributes=ReturnAtt("",SFU1605()),
            screwL=800,
            screw=true,
            nut=true,
            fixed=true,
            free=true,
            NDFE=120,
            AStep=30);
}

module YBallscrew(){                              
  BallScrew(request="GENERATE BALLSCREW ASSEMBLY",
            attributes=ReturnAtt("",SFU1605()),
            screwL=750,
            screw=true,
            nut=true,
            fixed=true,
            free=true,
            NDFE=120,
            AStep=30);
}

translate([-50,0,0])XRailTop();
//translate([-50,780.5,0])XRailBottom();
translate([-100,0,0])XRailBottom();
translate([-150,0,0])YRail();
translate([-200,0,0])YRail();
translate([-250,-54,0])YBallscrew();
translate([0,-54,0])XBallscrew();