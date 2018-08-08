with(text_element){
	instance_destroy(self);
}
create_header("The truth is, that man wasn't anyone important, just some drifter who had taken the spot across from hers. One morning he'd said \'hi\' to her and offered her a cigarette.");
create_space(level_1_room_start_14);
nicole_char.direction = 0;
camera_set_view_size(mouse.myCamera,640/2,480/2);
camera_set_view_pos(mouse.myCamera,nicole_char.x-250,nicole_char.y-225);