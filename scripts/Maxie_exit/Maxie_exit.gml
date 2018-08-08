with(text_element){
	instance_destroy(self);
}

nicole_char.x = 220;
nicole_char.y = 220;
nicole_char.direction = 0;
maxie_char.direction = 180;
camera_set_view_pos(mouse.myCamera,0,0);
camera_set_view_size(mouse.myCamera,640,480);
create_header("Maxie waves at Nicole as she leaves.\n"+control.maxie_name+" - \"Feel free to stop by any time.\"");
create_space(exit_dialogue);