with(text_element){
	instance_destroy(self);
}
point_characters(maxie_char,true);
create_header("The woman behind the counter greets Nicole with a smile that looks as though it's been used a bit too much recently.\n"+control.maxie_name+" - \"Welcome to Maxie's pizzaria, what can I get for ya?\"");
create_option("\"One slice please\"",exit_dialogue,0);
create_option("\"Actualy I just wanted to chat.\"",maxie_1st_time_chat,1);
create_option("\"Never mind.\"",exit_dialogue,2);
control.paused = true;
mouse.fixed_camera = true;