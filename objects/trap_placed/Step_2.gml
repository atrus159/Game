if(trigger){
	instance_destroy(self);
	instance_create_layer(x,y,"lighting",trap_explode);
}