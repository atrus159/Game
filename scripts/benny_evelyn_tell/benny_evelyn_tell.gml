with(text_element){
	instance_destroy(self);
}

create_header("He just looks at her and shakes his head.\n"+control.benny_name+" - \"No. No no no that would be terrible.");
create_option("\"What if someone took your place?\"",benny_evelyn_question,0);
create_option("\"That's...rough. Gotta go.\"",benny_evelyn_leave,1);