///scr_nav(start_X, start_y, end_x, end_y)
var start_x = argument0;
var start_y = argument1;
var end_x = argument2;
var end_y = argument3;

can_execute = true;

if !(mp_grid_path(global.map_grid, global.navigate, start_x, start_y, end_x, end_y, false))
{
    show_debug_message("Unable to navigate!");
    return false;
} 
else
{
    is_moving = true;
    mp_grid_path(global.map_grid, global.navigate, start_x, start_y, end_x, end_y, false);
    path_set_precision(global.navigate, player_preciscion);
    path_start(global.navigate, player_speed, path_action_stop, false);
    
    can_execute = true;
    
    return true;
}
