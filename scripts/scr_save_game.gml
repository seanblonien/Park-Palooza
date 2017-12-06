///scr_save_game
if(file_exists(working_directory + "save.sav")) file_delete(working_directory + "save.sav");

ini_open(working_directory + "save.sav");

ini_write_real("Game", "points", global.total_points);
ini_write_real("Game", "sound", global.sound_level);
ini_write_real("Game", "music", global.music_level);
ini_write_real("Game", "gender", global.gender);
ini_write_real("Game", "total_table_count", global.total_table_count);
ini_write_string("Game", "username", global.username);
//Save level completion data
for (i=0; i<=10; i+=1)
{
    ini_write_real("Levels", string(i), global.level_complete[i]);
};


ini_close();
