///scr_create_points(points, x, y)

//Create points instance
var pts = instance_create(argument1, argument2, obj_points);
//Set the point value within the new object
pts.points = floor(argument0);
//Trigger the alarm that creates the points data
pts.alarm[1] = 1;
