///scr_draw_combo(x,y)

//argument1 = x;
//argument2 = y;

//Set a temporary x value that will be changing to the x passed in
var x_val = argument0;

//Draw multiplier X
draw_sprite_ext(spr_combo_x, 0, x_val, argument1, 1, 1, 0, c_white, alpha);
x_val += 24;
//Draw value before the decimal point
draw_sprite_ext(spr_numbers_combo, ds_list_find_value(combo_data, 0), x_val, argument1, 1, 1, 0, c_white, alpha);
x_val += 13;
//Draw decimal point
draw_sprite_ext(spr_combo_period, 0, x_val, argument1+12, 1, 1, 0, c_white, alpha);
x_val += 20;
//Draw the next two numbers following the decimal
draw_sprite_ext(spr_numbers_combo, ds_list_find_value(combo_data, 1), x_val, argument1, 1, 1, 0, c_white, alpha);
x_val += 20;
draw_sprite_ext(spr_numbers_combo, ds_list_find_value(combo_data, 2), x_val, argument1, 1, 1, 0, c_white, alpha);
