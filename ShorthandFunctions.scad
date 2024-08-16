module R(x=0,y=0,z=0){
  rotate([x,y,z])children();
}

module T(x=0,y=0,z=0){
  translate([x,y,z])children();
}
//difference(){
//  square(10,10);
//  translate([10,10,0])Fillet(radius=5);
//}

module Fillet(radius=1){
  translate([-radius,-radius])difference(){
    circle(r=1.001*sqrt(2)*radius);
    circle(r=radius);
    difference(){
      square(sqrt(2)*[2*radius,2*radius],center=true);
      square(1.001*[radius,radius]);
    }
  }
}