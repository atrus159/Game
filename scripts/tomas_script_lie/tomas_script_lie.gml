with(text_element){
	instance_destroy(self);
}
create_header("The bouncer looks down at Nicole. He is very tall.\n"+control.tomas_name+"- \"You got papers?\".");
var hasPass = 0;
with(trap){
	if(!dropped){
		hasPass = 1;	
	}
}

create_option("Leave quickly.",exit_dialogue,0);
if(hasPass){
	create_option("Show him the fake papers.",tomas_script_fake,1);
}