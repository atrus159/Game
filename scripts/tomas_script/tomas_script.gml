with(text_element){
	instance_destroy(self);
}
point_characters(tomas_char,true);
create_header("The bouncer watches Nicole aproach coolly from under his shades.\n "+control.tomas_name+" - \"You 21?\"");
create_option("\"I...uh...\"",tomas_script_uhh,0);
create_option("\"Yeah. 21. Definitely.\"",tomas_script_lie,1);
create_option("\"Why are you wearing shades at night?\"",tomas_script_shades,2);
var hasCigarettes = 0;
with(cigarette){
	if(!dropped){
		hasCigarettes = 1;	
	}
}


if(hasCigarettes){
	create_option("Offer him a cigarette.",tomas_script_cig,3);
	create_option("\"Just passing by\"",exit_dialogue,5);
}else{
	create_option("\"Just passing by\"",exit_dialogue,3);
}
control.paused = true;
mouse.fixed_camera = true;