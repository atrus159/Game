with(text_element){
	instance_destroy(self);
}
create_header("September rain falls on the house. In the failing light, the old grandmother sits in the kitchen with the child beside the Little Marvel Stove,\nreading the jokes from the almanac, laughing and talking to hide her tears.");
create_space(sestina2);
control.paused = true;
mouse.fixed_camera = true;
camera_set_view_size(mouse.myCamera,640,480);
camera_set_view_pos(mouse.myCamera,x-320,y-240);

