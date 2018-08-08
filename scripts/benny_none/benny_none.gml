with(text_element){
	instance_destroy(self);
}



create_header("He throws her a sarcastic glance.\n"+control.benny_name+" - \"Oh? Realy? You don't? How unexpected.\"");
create_option("Leave awkwardly.",benny_exit,0);
if(control.money == 0){
create_option("\"No realy, I don't.\"",benny_none_1,1);
}else{
create_option("Sheepishly hand him a dollar.",benny_dollar_late,1);	
}
create_option("\"Look, can we just talk?\"",benny_ignore,2);
if(control.conv_flag_2){
	create_option("\"Maxie said to pass a message to you\"",benny_evelyn,4);	
}