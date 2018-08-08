event_inherited()
if(!dropped && paired && instance_exists(paired)){
	var i = ds_list_find_index(holder.inventory,self);
	if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),get_inventoryX(i)-control.inventory_slot_size/2,get_inventoryY(i)-control.inventory_slot_size/2,get_inventoryX(i)+control.inventory_slot_size/2,get_inventoryY(i)+control.inventory_slot_size/2)){	
		draw_set_color(c_lime);
		draw_set_alpha(0.4);
		draw_line(holder.x,holder.y,paired.x,paired.y);
		draw_set_alpha(1);
	}
}