with(text_element){
	instance_destroy(self);
}
camera_set_view_size(mouse.myCamera,640/1.2,480/1.2);
camera_set_view_pos(mouse.myCamera,benny_char.x-300,benny_char.y-200);
benny_char.y +=10;
point_characters(benny_char,true);
create_header("When he does answer, it is low and serious, and he leans in close.\n"+control.benny_name+" - \"Alrigth, listen. That woman is bad news. There's a job she wanted done and I was hired to do it. But I can't do it see? But I can't tell her that. If I back out she'll be mad and we can't have that. Oh no we can't.\"");
create_space(benny_evelyn_4);