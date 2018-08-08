if(!control.paused){
if(instance_exists(target)){
if(!target.stored && target.store_x == -1 && target.store_y == -1){	
	x = target.x;
	y = target.y;
	facing = target.facing
		if(target.state != 1){
		instance_destroy(self);	
	}
}else{
	instance_destroy(self);	
}
}else{
instance_destroy(self)
}
}