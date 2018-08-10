if(dropped){ //&& point_in_rectangle(mouse.x,mouse.y,x-20,y-20,x+20,y+20) && !control.paused){
	var nearest = instance_nearest(x,y,pc_character);
	if(distance_to_object(nearest)<=64 && ds_list_size(nearest.inventory)<control.inventory_size){
		dropped = 0;
		ds_list_add(nearest.inventory,self);
		holder = nearest;
		control.dont_deselect  = 1;
	}
}