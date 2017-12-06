///scr_load_game();
if (file_exists(working_directory + "save.sav")) {
    ini_open(working_directory + "save.sav");
    
    global.total_points = ini_read_real("Game", "points", 0);
    global.sound_level = ini_read_real("Game", "sound", 1);
    global.music_level = ini_read_real("Game", "music", 0.5);
    global.gender = ini_read_real("Game", "gender", 1);
    global.level = ini_read_real("Game", "level", 0);
    global.total_table_count = ini_read_real("Game", "total_table_count", 0);
    global.username = ini_read_string("Game", "username", "");
    
    //Load level completion data
    for (i=0; i<=10; i+=1)
    {
        global.level_complete[i] = ini_read_real("Levels", string(i), 0);
    };

    
    ini_close();
}
