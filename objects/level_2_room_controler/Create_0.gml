if(!instance_exists(control)){
	instance_create_layer(0,0,"control",control)
}
if(!instance_exists(nicole_char)){

	instance_create_layer(spawn_point.x,spawn_point.y,"Instances",nicole_char)

}else{
	nicole_char.x = spawn_point.x;
	nicole_char.y = spawn_point.y;
}
camera_set_view_pos(mouse.myCamera,nicole_char.x-250,nicole_char.y-250);
music = instance_create_layer(0,0,"control",sound_control);
music.my_audio = audio_play_sound(the_haunted_piano,1,false)
music.start_time = 24.3
music.end_time = 135.06
