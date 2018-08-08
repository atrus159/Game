with(text_element){
	instance_destroy(self);
}
point_characters(benny_char,true);
point_characters(benny_char,false);
create_header("The man looks up at Nicole and makes a pinching gesture on his left palm with his right hand.");
create_option("Leave the man be",benny_exit,1);
create_option("\"I'm sorry, I don't have any.\"",benny_none,0);

if(control.money >=1){
create_option("Hand him a dollar",benny_dollar_late,3);
}
if(control.conv_flag_2){
	create_option("\"Maxie said to pass a message to you\"",benny_evelyn,4);	
}

control.paused = true;
mouse.fixed_camera = true;