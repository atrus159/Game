with(text_element){
	instance_destroy(self);
}

create_header("Again he doesn't seem to notice. Nicole is starting to get a bit flustered");
create_option("Leave the man be",benny_exit,1);
create_option("\"I...I just wanna talk! Can you...\"",benny_hi_3,0);
if(control.money >=1){
create_option("Hand him a dollar",benny_dollar_late,3);
}
if(control.conv_flag_2){
	create_option("\"Maxie said to pass a message to you\"",benny_evelyn,4);	
}

control.paused = true;
mouse.fixed_camera = true;