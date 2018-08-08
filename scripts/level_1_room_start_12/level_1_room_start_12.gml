with(text_element){
	instance_destroy(self);
}
create_header("Nicole turns back to the bed. The clawing sensation in her stomach has returned now, yanking her insides and leaving them hollow. She wants to scream but doesn't have the habit.");
create_space(level_1_room_start_13);
nicole_char.direction = 180-50;
camera_set_view_size(mouse.myCamera,640/1.6,480/1.6);
camera_set_view_pos(mouse.myCamera,nicole_char.x-300,nicole_char.y-180);