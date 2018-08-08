with(text_element){
	instance_destroy(self);
}
create_header("This is a pack of cigarettes. Once it belonged to a drifter. It looks old and bent.");
create_option("Take one out.",cigarette_script_2,0);
create_option("Put the pack away",exit_dialogue,1);
mouse.fixed_camera = 1;
control.paused = 1;