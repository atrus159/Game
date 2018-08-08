with(text_element){
	instance_destroy(self);
}

create_header("He doesn't seem to notice.");
create_option("Leave the man be",benny_exit,1);
create_option("\"I had some questions\"",benny_hi_2,0);
if(control.money >=1){
create_option("Hand him a dollar",benny_dollar,3);
}

if(control.conv_flag_2){
	create_option("\"Maxie said to pass a message to you\"",benny_evelyn,4);	
}
