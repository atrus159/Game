with(text_element){
	instance_destroy(self);
}
create_header("Nicole pulls a cigarette out of the pack. She turns the thing over in her hands, feeling its texture.");
create_option("Try to chew on it",cigarette_script_3,0);
create_option("Put the pack away",exit_dialogue,1);
mouse.fixed_camera = 1;
control.paused = 1;