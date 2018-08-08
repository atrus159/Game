with(text_element){
	instance_destroy(self);
}
point_characters(alexander_interactable,true);
create_header("Alexander leans against the van nonchalantly.");
create_option("I want advice on what to do next.",text_template,0);
var hasSpirits = 0;
with(trap_stored){
	if(!dropped && ds_list_size(stored_list)>0){
		hasSpirits = 1;	
	}
}
if(hasSpirits){
create_option("I want to deposit some spirits",alexander_deposit_spirits,1);
create_option("Never mind.",exit_dialogue,2);
}
else{
		create_option("Never mind.",exit_dialogue,1);
}
control.paused = true;
mouse.fixed_camera = true;