///scr_draw_shadow()
if(sprite_exists(sprite_index)) {
    draw_sprite_ext(sprite_index, -1, x+3,y-6,image_xscale, image_yscale,0,c_black,0.5);
    draw_self();
}
