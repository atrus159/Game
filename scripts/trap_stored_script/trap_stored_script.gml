with(text_element){
	instance_destroy(self);
}
create_header("This photon trap has been used. Opening it will release any spirits stored inside.");
create_option("Open it.",trap_stored_script_2,0);
create_option("Put the trap away",exit_dialogue,1);
mouse.fixed_camera = 1;
control.paused = 1;
useFlag = 1;