if(!dropped && holder != noone && ds_list_find_value(control.selected,0)==holder && !control.paused && cooldown_timer == 0){
	var invIndex = ds_list_find_index(holder.inventory,self);
	var invx = get_inventoryX(invIndex);
	var invy = get_inventoryY(invIndex);
	if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),invx-control.inventory_slot_size/2,invy-control.inventory_slot_size/2,invx+control.inventory_slot_size/2,invy+control.inventory_slot_size/2)){
	if(only_holder == noone || holder.object_index == only_holder){
	cooldown_timer = cooldown;
	script_execute(use);
	}
	}
}