///scr_points(patron id, player action [see controller])

//argument0 = patron id
//argument1 = current player action

//Remember the patron's ID to be able to access happiness and base points
global.points_controller.patron_id = argument0;
global.points_controller.points_current_action = argument1;
//Set of delay alarm to display the points 
global.points_controller.alarm[0] = room_speed * 0.05;
