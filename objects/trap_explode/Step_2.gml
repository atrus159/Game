with(spirit){
	if(!stored){
	if(distance_to_point(other.x,other.y)<164){
		if(disable_stack >=0){
		store_x = other.x;
		store_y = other.y;
		ds_list_add(other.created_trap.stored_list,self);
		}
	}
	}
}