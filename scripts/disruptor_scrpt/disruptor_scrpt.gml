var placex = holder.x +lengthdir_x(50,holder.direction)
var placey = holder.y +lengthdir_y(50,holder.direction)
if(!collision_circle(placex,placey,20,avoidable,true,true)){
	instance_create_layer(placex,placey,"walls",disruptor_placing)
	var invIndex = ds_list_find_index(holder.inventory,self);
	delete_id = holder.inventory;
	delete_pos = invIndex;
	delete_flag = 1;
	holder.destinationX = -1;
	holder.destinationY = -1;
}else{
		
}