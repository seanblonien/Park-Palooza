///scr_load_level(level number)

//Flush all textures from memory each time loaded.
draw_texture_flush();

//Open the levels data file
if(file_exists(working_directory + "levels.dat")) ini_open(working_directory + "levels.dat");
else {
    show_debug_message("ERROR OPENING levels.dat (see scr_load_level)");
    exit;
}

//show_debug_message("Loading level: " + string(argument0));

//Set the current level to be our section of the ini file
var current_level = "level_" + string(argument0);

//Empty out the level data if there is any
if(!ds_queue_empty(global.patron_data)) {
    ds_queue_destroy(global.patron_data);
    global.patron_data = ds_queue_create();
}

//If the section (level) in the ini file exists
if(ini_section_exists(current_level)) {
    //Read in how many patrons there are for this level
    var num_patrons = ini_read_real(current_level, "num_patrons", 0);
    
    //Add that to be our first value in our level_data list
    global.patrons_this_level = num_patrons;
    
    //For the number of patrons in this level
    for (i=0; i<num_patrons; i+=1)
    {
        //Set the keys that will be used to access patron i
        var key_patron_type = "patron" + string(i) + "_type";
        var key_patron_num = "patron" + string(i) + "_num";
        var key_patron_delay = "patron" + string(i) + "_delay";
        //Read in the values for the current patron
        var type = ini_read_real(current_level, key_patron_type, 0);
        var num = ini_read_real(current_level, key_patron_num, 0);
        var delay = ini_read_real(current_level, key_patron_delay, 5);
        //Add these values to the level data list
        ds_queue_enqueue(global.patron_data, type);
        ds_queue_enqueue(global.patron_data, num);
        ds_queue_enqueue(global.patron_data, delay);
    }
    
} else show_debug_message("ERROR OPENING SPECIFIC LEVEL DATA (see scr_load_level)"); //Show debug if level not found

//Close file
ini_close();

//Reset the table count for that level
global.count_table = 1;
