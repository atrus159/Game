with(text_element){
	instance_destroy(self);
}

var ep = 0;
var spirit_count = 0;
var trap_count = 0;
var myList = ds_list_create()
with(trap_stored){
	if(!dropped){
		ds_list_add(myList,holder)
		trap_count += 1;
		ds_list_delete(holder.inventory,ds_list_find_index(holder.inventory,self))
		instance_destroy(self);
	}
}
with(spirit){
	if(stored){
		spirit_count +=1;
		ep += ep_count;
		instance_destroy(self);	
	}
}

var header_string = "ALEXANDER - \"Well done! You captured "+string(spirit_count)+" spirits with a total of "+string(ep)+" ectoplasm\"\nHe hands over the money.";

for(var i = 0; i<trap_count; i+=1){
	var newTrap = instance_create_layer(alexander_interactable.x+random(64)-32,alexander_interactable.y+random(64)-32,"ground",trap);
	newTrap.holder = ds_list_find_value(myList,i);
	ds_list_add(newTrap.holder.inventory,newTrap)
	newTrap.dropped = false;
}
control.money +=ep*control.ep_to_money;
create_header(header_string);
create_space(alexander_help_menu);
ds_list_destroy(myList)