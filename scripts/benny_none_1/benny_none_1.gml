with(text_element){
	instance_destroy(self);
}

point_characters(benny_char,true);

create_header("He glances pensively at Nicole's empty wallet, then lets out a sign.\n"+control.benny_name+" - \"Alright fine, I guess i'm not just gonna sit here and ignore you all day. What is you was wanting?\"");
create_option("\"Nothing now.\"",benny_exit,1);
create_option("\"I had some questions.\"",benny_question,0);
if(control.conv_flag_2){
	create_option("\"Maxie said to pass a message to you\"",benny_evelyn,2);	
}