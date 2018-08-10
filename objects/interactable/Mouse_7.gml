if(distance_to_object(instance_nearest(x,y,pc_character))<=64 && !control.paused){
	control.dont_deselect = true
	script_execute(myScript);
}