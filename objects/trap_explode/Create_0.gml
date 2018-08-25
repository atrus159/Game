t = 0;
tdir = 0;
created_trap = instance_create_layer(x,y,"ground", trap_stored);
audio_play_sound(trap_explode_sfx,0,false)