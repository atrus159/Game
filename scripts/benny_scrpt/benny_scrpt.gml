with(text_element){
	instance_destroy(self);
}

point_characters(benny_char,false);
create_header("The man on the street has a glazed look, staring past Nicole at the fence on the other side of the street.");
create_option("Ignore the man",benny_exit,1);
create_option("\"Uh...Hi.\"",benny_hi,0);
if(control.money >=1){
create_option("Hand him a dollar",benny_dollar,3);
}
if(control.conv_flag_2){
	create_option("\"Maxie said to pass a message to you\"",benny_evelyn,4);	
}

control.paused = true;
mouse.fixed_camera = true;