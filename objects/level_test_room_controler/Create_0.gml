if(!instance_exists(control)){
	instance_create_layer(0,0,"control",control)
	camera_set_view_pos(mouse.myCamera,nicole_char.x-250,nicole_char.y-250);
}
