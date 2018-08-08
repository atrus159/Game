with(text_element){
	instance_destroy(self);
}
create_header("Nicole is overwhelmed by a sudden feeling of purposelessness. It seems so impossible to think of what to do now. Going on has always been the default, as long she can remember, since she'd been dropped in the first shelter at age 6.");
create_space(level_1_room_start_15);
instance_destroy(level_1_npc);
nicole_char.direction = 0;
camera_set_view_size(mouse.myCamera,640/1.6,480/1.6);
camera_set_view_pos(mouse.myCamera,nicole_char.x-300,nicole_char.y-180);