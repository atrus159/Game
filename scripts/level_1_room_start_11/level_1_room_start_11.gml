with(text_element){
	instance_destroy(self);
}
create_header("The clicking recedes into the distance, leaving only silence.");
create_space(level_1_room_start_12);
level_1_npc.direction = 0;
level_1_npc.destinationX = nicole_char.x+500;
level_1_npc.destinationY = nicole_char.y;
nicole_char.direction = 0;
audio_play_sound(footsteps_away,1,false);