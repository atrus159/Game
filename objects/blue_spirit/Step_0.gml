event_inherited()
if(!control.paused){
facing = 180-darctan2(y-instance_nearest(x,y,pc_character).y,x-instance_nearest(x,y,pc_character).x);
if(!stored && store_x == -1 && store_y == -1){
	var dist = distance_to_object(instance_nearest(x,y,pc_character))
	if(dist>200 && dist <400){
		mp_potential_step_object(instance_nearest(x,y,pc_character).x,instance_nearest(x,y,pc_character).y,5,spirit_wall);
	}else if(dist<180){
		mp_potential_step_object(instance_nearest(x,y,pc_character).x,instance_nearest(x,y,pc_character).y,-5,spirit_wall);
	}
}
}