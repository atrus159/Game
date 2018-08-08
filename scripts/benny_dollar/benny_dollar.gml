with(text_element){
	instance_destroy(self);
}

point_characters(benny_char,true);
control.money -=1;
create_header("He looks up at Nicole, startled.\n"+control.benny_name+" - \"Oh, uh...Thank you! Thank you good sir! I mean uh...ma'am. Thank you ma'am.\"");
create_option("\"Any time.\"",benny_exit,1);
create_option("\"I had some questions.\"",benny_question,0);
if(control.conv_flag_2){
	create_option("\"Maxie said to pass a message to you\"",benny_evelyn,2);	
}