if(distance_to_object(instance_nearest(x,y,pc_character))<64){
	control.dont_deselect = true
	instance_create_layer(x,y,"ground",disruptor)
	instance_destroy(self);	
}
