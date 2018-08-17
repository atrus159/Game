if(ds_list_size(stored_list) == 0){
	sprite_dropped = trap_dropped	
}else{
		sprite_dropped = trap_stored_dropped	
}
if(pickable && ds_list_size(stored_list) == 0){
		var created = instance_create_layer(x,y,"ground",trap)
		created.t= t
		instance_destroy(self)
}