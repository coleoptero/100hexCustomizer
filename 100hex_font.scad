/*
//-- Customizable 100hex typo
//-- 
//-- With this customizable script, by default, you can design basic hexagonal typo objects for
//-- the 100hex project (https://www.thingiverse.com/thing:2477471)
//-- 
//-- (c)  2017 Juan Manuel Amuedo Gonzalez - (ºLe    coleoptero(AT)google(DOT)com
//-- Customizable Basic 100hex object is licensed under the
//-- Creative Commons 3.0 - Attibution-ShareAlike license.
//-- https://creativecommons.org/licenses/by-sa/3.0/
*/

use <write/Write.scad>

// preview[view:south, tilt:top]

/* [Polygon] */

// Regular polygon sides number. (If you want to create a 100hex object don't change this parameter.)
polygon_sides=6; // [3:20]

//Side size (mm) (If you want to create a 100hex object don't change this parameter.)
size_side=60; // [10:200]

// Height (mm) (If you want to create a 100hex object don't change this parameter.)
height=2; // [1:100]

has_frame = "yes"; // [yes, no]

// Polygon frame width (mm)
polygon_frame_width=1; // [1:200]

// Interior regular polygon sides number. (If you want to create a 100hex object don't change this parameter.)
interior_polygon_sides=6; // [3:100]

/* [Grid] */

// Object design has horizontal lines
has_horizontal_lines = "no"; // [yes, no]

// Horizontal lines number
horizontal_lines_number = 40; // [1:200]

// Horizontal line width
horizontal_line_width = 1; // [1:100]

// Horizontal line X axis angle 
horizontal_line_x_angle = 0; // [0:359]

// Horizontal line Y axis angle 
horizontal_line_y_angle = 0; // [0:359]

// Horizontal line Z axis angle 
horizontal_line_z_angle = 60; // [0:359]

// Horizontal line X offset
x_horizontal_line_offset=0.0; // [-120.0:120.0]

// Horizontal line Y offset
y_horizontal_line_offset=0.0; // [-120.0:120.0]

// Horizontal line Z offset
z_horizontal_line_offset=0.0; // [-119.9:119.9]


// Object design has horizontal lines
has_vertical_lines = "no"; // [yes, no]

// Vertical lines number
vertical_lines_number = 10; // [1:200]

// Vertical line width
vertical_line_width = 1; // [1:100]

// Vertical line X axis angle 
vertical_line_x_angle = 0;  // [0:359]

// Vertical line Y axis angle 
vertical_line_y_angle = 0;  // [0:359]

// Vertical line Z axis angle 
vertical_line_z_angle = 0;  // [0:359]

// Vertical line X offset
x_vertical_line_offset=0.0; // [-120.0:120.0]

// Vertical line Y offset
y_vertical_line_offset=0.0; // [-120.0:120.0]

// Vertical line Z offset
z_vertical_line_offset=0.0; // [-120.0:120.0]


// Segment position = index of element in vector (typo).
//
//                   0
//            ---------------
//         /  \      |      /  \
//        /    \ 7   | 8   /    \
//    5  /      \    |    /      \  1
//      /        \   |   / 9      \
//     /    6     \  |  /    10    \
//     -------------   -------------
//     \          /  |  \          /
//      \        /   |   \ 11     /      
//    4  \      /    |    \      /  2      
//        \    /13   | 12  \    /      
//         \  /      |      \  /      
//            ---------------
//                   3
           
has_font = "yes";

// Uncoment single typo definition line 

//typo = [0,0,0,0,0,0,0,0,0,0,0,0,0,0]; // none_typo
//typo = [1,1,1,1,1,1,1,1,1,1,1,1,1,1]; // test
//typo = [1,1,1,1,1,1,0,0,1,0,0,0,0,0]; // power

//typo = [1,1,1,1,1,1,0,0,0,1,0,0,0,1]; // 0
//typo = [0,0,0,0,0,0,0,0,1,0,0,0,1,0]; // 1
//typo = [1,1,0,1,1,0,1,0,0,0,1,0,0,0]; // 2
//typo = [1,1,1,1,0,0,1,0,0,0,1,0,0,0]; // 3
//typo = [0,1,1,0,0,1,1,0,0,0,1,0,0,0]; // 4
//typo = [1,0,1,1,0,1,1,0,0,0,1,0,0,0]; // 5
//typo = [1,0,1,1,1,1,1,0,0,0,1,0,0,0]; // 6
//typo = [1,0,0,0,0,0,0,0,0,1,0,0,1,0]; // 7
//typo = [1,1,1,1,1,1,1,0,0,0,1,0,0,0]; // 8
//typo = [1,1,1,1,0,1,1,0,0,0,1,0,0,0]; // 9
//typo = [1,1,1,0,1,1,1,0,0,0,1,0,0,0]; // A
//typo = [1,1,1,1,0,0,0,0,1,0,1,0,1,0]; // B
//typo = [1,0,0,1,1,1,0,0,0,0,0,0,0,0]; // C
//typo = [1,1,1,1,0,0,0,0,1,0,0,0,1,0]; // D
//typo = [1,0,0,1,1,1,1,0,0,0,1,0,0,0]; // E  //version 1
//typo = [1,0,0,1,1,1,1,0,0,0,0,0,0,0]; // E  //version 2 
//typo = [1,0,0,1,0,0,0,1,0,0,1,0,0,1]; // E  //version 3
//typo = [1,0,0,0,1,1,1,0,0,0,1,0,0,0]; // F  //version 1
//typo = [1,0,0,0,1,1,1,0,0,0,0,0,0,0]; // F  //version 2 
//typo = [1,0,0,0,0,0,0,1,0,0,1,0,0,1]; // F  //version 3

// Define other typos here
// ...

// See aspect when has_horizontal_lines ="yes"


module my_font_100hex(){


// Image surface cutting height
min_layer_height=0.4;


   union(){
       if(has_frame == "yes"){
          difference(){
            cylinder(h=height,r=size_side,$fn=polygon_sides);
            cylinder(h=height,r=size_side - polygon_frame_width,$fn=interior_polygon_sides);
          }
       } // if
       
       if( has_horizontal_lines == "yes" || has_vertical_lines == "yes" || has_font == "yes") {
          intersection(){
             cylinder(h=height,r=size_side,$fn=polygon_sides);
           
             union(){              
                if(has_horizontal_lines == "yes"){
                   for(i=[-size_side:(size_side*2)/horizontal_lines_number:size_side]){
                      rotate([horizontal_line_x_angle,horizontal_line_y_angle,horizontal_line_z_angle])
                         translate([-size_side+x_horizontal_line_offset,i+y_horizontal_line_offset,z_horizontal_line_offset])
                            cube([size_side*2,horizontal_line_width,height]);
                   }  // for
                } // if 
            
                if(has_vertical_lines == "yes"){
                   for(j=[-size_side:(size_side*2)/vertical_lines_number:size_side]){
                      rotate([vertical_line_x_angle,vertical_line_y_angle,vertical_line_z_angle])
                         translate([j+x_vertical_line_offset,-size_side+y_vertical_line_offset,z_vertical_line_offset])
                            cube([vertical_line_width,size_side*2,height]);
                   } // for
                } // if 
 
                if(has_font == "yes"){
                    if(typo[0] == 1) translate([0,(size_side-(size_side/6)-3),height/2]) segment();
                    if(typo[1] == 1) rotate([0,0,120]) translate([0,-(size_side-(size_side/6)-3),height/2]) segment();
                    if(typo[2] == 1) rotate([0,0,60]) translate([0,-(size_side-(size_side/6)-3),height/2]) segment();
                    if(typo[3] == 1) translate([0,-(size_side-(size_side/6)-3),height/2]) segment();
                    if(typo[4] == 1) rotate([0,0,120]) translate([0,(size_side-(size_side/6)-3),height/2]) segment();
                    if(typo[5] == 1) rotate([0,0,60]) translate([0,(size_side-(size_side/6)-3),height/2]) segment();
                    if(typo[6] == 1) translate([-(size_side/2),0,height/2]) segment();
                    if(typo[7] == 1) rotate([0,0,120]) translate([(size_side/2),0,height/2]) segment();
                    if(typo[8] == 1) rotate([0,0,90]) translate([(size_side/2),0,height/2]) segment();
                    if(typo[9] == 1) rotate([0,0,60]) translate([(size_side/2),0,height/2]) segment();
                    if(typo[10] == 1) translate([(size_side/2),0,height/2]) segment();
                    if(typo[11] == 1) rotate([0,0,-60]) translate([(size_side/2),0,height/2]) segment();
                    if(typo[12] == 1) rotate([0,0,-90]) translate([(size_side/2),0,height/2]) segment();
                    if(typo[13] == 1) rotate([0,0,-120]) translate([(size_side/2),0,height/2]) segment();
                        
                } // if 
             } // union
          } // intersection
       } // if
   } // union
} // module

module segment(){
    union(){
        cube([size_side-(size_side/6),size_side/6,height], center=true);
        translate([-(size_side-(size_side/6))/2,0,0])
           cylinder(h=height, r=(size_side/6)/2, $fn=100, center=true);
        translate([(size_side-(size_side/6))/2,0,0])
           cylinder(h=height, r=(size_side/6)/2, $fn=100, center=true);
    } // union    
} // module

my_font_100hex();