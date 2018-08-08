with(text_element){
	instance_destroy(self);
}
maxie_char.direction = 180+90;
nicole_char.x = 352;
nicole_char.y = 340;
nicole_char.destinationX = -1;
nicole_char.destinationY = -1;
nicole_char.direction = 90;
nicole_char.foot_timer = 0;
camera_set_view_pos(mouse.myCamera,149,148);
camera_set_view_size(mouse.myCamera,640/1.5,480/1.5);
create_header("As Nicole sits down, the woman pulls a chair from under the counter and sits as well\n"+control.maxie_name+" - \"I'm Maxie by the way. Not sure if it was obvious.\"\nNicole nods.\nNICOLE - \"I'm Nicole, hi.\"");
create_space(maxie_gossip_hub)
control.maxie_name = "MAXIE";
ds_list_add(control.people_known,"Maxie");