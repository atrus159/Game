with(text_element){
	instance_destroy(self);
}
create_header("Nicole puts the cigarette in her mouth gingerly. It tastes terriple. She spit it out, and then spits again for good measure.");
create_option("Pull out another",cigarette_script_2,0);
create_option("Put the pack away",exit_dialogue,1);
mouse.fixed_camera = 1;
control.paused = 1;