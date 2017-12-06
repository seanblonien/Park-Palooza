///scr_draw_points(x, y)

//argument0 = x;
//argument1 = y;

//Distance between each sprite that is drawn
//Width = 44 for sprite width difference + 4 for buffer
var x_buffer = 48; 
var x_orig = argument0;

//Draw the point values from the list
//Move the x coordinate for the next image to be drawn
for(i = 0; i < points_length; i++) { 
    var subimg = floor(ds_list_find_value(points_data, i));
    draw_sprite_ext(spr_numbers_points, subimg, x_orig, argument1, 1, 1, 0, c_white, alpha);
    x_orig += x_buffer;
}
