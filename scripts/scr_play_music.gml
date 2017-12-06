///scr_play_music(music sound index)

//If current music isn't the new music
if(global.current_music != argument0) {
    //Stop the old
    audio_stop_sound(global.current_music);
    //Set the new music
    global.current_music = argument0;
    
    //Play the new music
    audio_play_sound(global.current_music, 0, true);
}

audio_sound_gain(global.current_music, global.music_level, 0);


