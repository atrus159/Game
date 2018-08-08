with(text_element){
	instance_destroy(self);
}
create_header("Nicole has never seen the man in the doorway before, a stout, imposing figure despite his obvious age. He talks with a kind of barely restrained energy that seems to puff his chest outwards and straighten his back to almost ludicrous stiffness.");
camera_set_view_size(mouse.myCamera,640,480);
camera_set_view_pos(mouse.myCamera,alexander_char.x-130,alexander_char.y-200);
mouse.fixed_camera = true;
nicole_char.destinationX = 1476
nicole_char.destinationY = 857
nicole_char.selected = 0;
create_space(level_1_scene_2);