///scr_save_sound [saves the sound settings]
if(file_exists(working_directory + "save.sav")) {
    ini_open(working_directory + "save.sav");
}

ini_write_real("Game", "sound", global.sound_level);
ini_write_real("Game", "music", global.music_level);

ini_close();
