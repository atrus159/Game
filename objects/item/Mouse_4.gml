if(dropped){ //&& point_in_rectangle(mouse.x,mouse.y,x-20,y-20,x+20,y+20) && !control.paused){
	var n =1;
	var nearest = instance_nearest(x,y,pc_character);
	while(n<instance_number(pc_character) && !nearest.selected){
		n+=1
		nearest = instance_nth_nearest(x,y,pc_character,n)
	}
	if(nearest){
		if(distance_to_object(nearest)<=64 && ds_list_size(nearest.inventory)<control.inventory_size){
		dropped = 0;
		ds_list_add(nearest.inventory,self);
		holder = nearest;
		control.dont_deselect  = 1;
		}
	}
}