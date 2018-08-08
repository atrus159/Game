with(text_element){
	instance_destroy(self);
}
create_header("The doors swing open and the sound of heels clicking reverberates off the concrete.");
create_space(level_1_room_start_6);
level_1_npc.direction = 180;
level_1_npc.destinationX = nicole_char.x+70;
level_1_npc.destinationY = nicole_char.y;
nicole_char.direction = 0;
audio_play_sound(footsteps_towards,1,false);