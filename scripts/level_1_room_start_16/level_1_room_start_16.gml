with(text_element){
	instance_destroy(self);
}
create_header("More than anything, she wishes that someone, something, just this once, would tell her what to do.");
camera_set_view_size(mouse.myCamera,640,480);
camera_set_view_pos(mouse.myCamera,nicole_char.x-320,nicole_char.y-240);
mouse.fixed_camera = false;
instance_create_layer(nicole_char.x,nicole_char.y,"enviornmental",prompt);
instance_create_layer(1407,982,"Instances",level_1_npc);
level_1_npc.direction =140;
alexander_char.direction = 320;
audio_sound_gain(sound_control.my_audio,0,7000);
instance_create_layer(320,260,"ground",cigarette);
my_sound = instance_create_depth(0,0,"control",sound_control)
my_sound.my_audio = 	audio_play_sound(great_expectations,1,false);
my_sound.start_time = 60+0.95;
my_sound.end_time = 60*2+2.06;
audio_sound_gain(my_sound.my_audio,0,0);
audio_sound_gain(my_sound.my_audio,1,7000);