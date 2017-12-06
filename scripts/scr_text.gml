///scr_text(string, start x, start y, font, color) [returns text_object id]
//string = argument0
//x = argument1
//y = argument2
//font = argument3
//color = argument4

text_object = instance_create(argument1, argument2, obj_text);
text_object.my_string = argument0;
text_object.font = argument3;
text_object.color = argument4;

return text_object;
