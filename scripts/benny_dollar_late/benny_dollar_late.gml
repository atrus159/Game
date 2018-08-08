with(text_element){
	instance_destroy(self);
}

point_characters(benny_char,true);
control.money -=1;
create_header("The man rolls his eyes at her.\n"+control.benny_name+" - \"Took you long enough. Alright then, what is you was wanting?\"");
create_option("\"Nothing now.\"",benny_exit,1);
create_option("\"I had some questions.\"",benny_question,0);
if(control.conv_flag_2){
	create_option("\"Maxie said to pass a message to you\"",benny_evelyn,2);	
}