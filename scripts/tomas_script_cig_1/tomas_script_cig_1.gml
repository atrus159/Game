with(text_element){
	instance_destroy(self);
}
create_header("The bouncer looks hastily over his shoulder at the club behind him. He bites his lip, looks back at Nicole, then quickly grabs the pack out of her hands.\n"+control.tomas_name+" - \"Alright. But this never happened.\"");


create_space(tomas_script_cig_2)

var flag = 0;
with(cigarette){
	if(!dropped && !flag){
		flag = 1;
		ds_list_delete(holder.inventory,ds_list_find_index(holder.inventory,self))
		instance_destroy(self);
	}
}