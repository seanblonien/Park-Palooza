///scr_draw_check(x,y)

if(in_queue) {
    if(!drawing_check) {
        drawing_check = true;
        current_check = instance_create(argument0, argument1, obj_check);
    }
} else { 
    if(drawing_check) {
        with(current_check) {
            fade = true;
        }
        drawing_check = false;
    }
}
