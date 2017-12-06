///scr_add_queue(patron type, patron num, patron delay)
// argument0 = patron type
// argument1 = number of patrons
// argument2 = patron delay time

//show_debug_message("argument0: " + string(argument0));
//show_debug_message("argument1: " + string(argument1));
//show_debug_message("argument2: " + string(argument2));

//If queue is empty
if(ds_list_empty(patron_queue)) {
    //Move queue_x to original position
    queue_x = orig_x;
    //Create instance of new patron and add to queue
    if(argument0 == 0) {
        new_patron = instance_create(queue_x, queue_y, obj_patron_0);
    } else if (argument0 == 1) {
        new_patron = instance_create(queue_x, queue_y, obj_patron_1);
    }
    //Set the group size
    new_patron.group_size = argument1;
    
    //Add the new patron to the queue
    ds_list_add(patron_queue, new_patron); 
//Else if not empty
} else {
    //Move the queue's new patron's X value according to buffer value
    queue_x += 108;
    //Create new patron with new coordinates 
    if(argument0 == 0) {
        new_patron = instance_create(queue_x, queue_y, obj_patron_0);
    } else if (argument0 == 1) {
        new_patron = instance_create(queue_x, queue_y, obj_patron_1);
    }
    //Set the patron group size
    new_patron.group_size = argument1;
    
    //Add the new patron to the queue
    ds_list_add(patron_queue, new_patron); 
}
    
//Sets off alarm for next patron
alarm[0] = room_speed * argument2;

if(tutorial) { 
    patron_queue[| 0].spr_standing = spr_patron_1_glowing;
    with(obj_table_empty) image_index = 1;
}
