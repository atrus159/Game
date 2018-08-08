with(text_element){
	instance_destroy(self);
}

create_header(control.benny_name+" - \"Now she's wondering what happened with the job seing as I haven't shown up. Oh god, but I can't tell her. Oh god...\"\nHe's starting to sweat a bit under his hat.");
create_option("\"Why can't you just tell her you don't want to do the job?\"",benny_evelyn_tell,0);
create_option("\"What if someone took your place?\"",benny_evelyn_question,1);
create_option("\"That's...rough. Gotta go.\"",benny_evelyn_leave,5);