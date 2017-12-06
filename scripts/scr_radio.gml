///scr_radio()

//If current_radio_sound has been assigned
if(current_radio_sound != noone) {
    //Check if the current sound is still playing
    if(!audio_is_playing(current_radio_sound)) {
        //If it is not, then play a random radio sound
        var rand = irandom_range(1, 14);
        var radio_index_name = "s_radio_" + string(rand);
        current_radio_sound = asset_get_index(radio_index_name);
        
        scr_play_sound(current_radio_sound);
    }
//Else assign it a random radio sound
} else { 
    var rand = irandom_range(1, 14);
    var radio_index_name = "s_radio_" + string(rand);
    current_radio_sound = asset_get_index(radio_index_name);
    
    scr_play_sound(current_radio_sound);
}

