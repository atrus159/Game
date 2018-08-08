if(!control.paused){
if(destinationX !=-1 && destinationY != -1){
	mp_potential_settings(30*turn_speed,10*turn_speed,3,1);
	mp_potential_step_object(destinationX, destinationY,walkSpeed,avoidable);
}
if(point_distance(x,y, destinationX,destinationY)<=walkSpeed){
	destinationX = -1;
	destinationY = -1;
	instance_destroy(my_blocker);
}
}