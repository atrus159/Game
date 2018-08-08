with(text_element){
	instance_destroy(self);
}

create_header("He is quiet for a moment, scratching his mess of a beard.\n"+control.benny_name+" - \"I...suppose she wouldn't care especially if it was ME that did it, so long as somebody did it. But you'd have to talk to her. No no no I can't ask you to do that.\"");
create_option("\"It's fine, i'll talk to her.\"",benny_evelyn_accept,2);
create_option("\"That's...rough. Gotta go.\"",benny_evelyn_leave,3);