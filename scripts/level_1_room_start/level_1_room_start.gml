with(text_element){
	instance_destroy(self);
}
create_header("It has been 8 hours, 3 minutes, and 46 seconds since the body was removed from the room.");
create_space(level_1_room_start_2);

mouse.fixed_camera = true;
camera_set_view_size(mouse.myCamera,640,480);
camera_set_view_pos(mouse.myCamera,nicole_char.x-320,nicole_char.y-240);
nicole_char.direction = 180-50;
my_sound = instance_create_depth(0,0,"control",sound_control)
my_sound.my_audio = 	audio_play_sound(empty_room,1,false);
my_sound.start_time = 0;
my_sound.end_time = 16;
audio_sound_gain(my_sound.my_audio,0,0);
audio_sound_gain(my_sound.my_audio,1,5000);