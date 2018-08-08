with(text_element){
	instance_destroy(self);
}
create_header("The bouncer's posture stiffens a bit as he notices the cigarettes.\n "+control.tomas_name+" -\"Where'd you get those?\"");


create_option("\"You want them?\"",tomas_script_cig_half,0);
