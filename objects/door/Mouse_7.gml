if(clicked_on){
	clicked_on = 0;
	if(distance_to_object(instance_nearest(x,y,pc_character))<=64){
		if(!blocked){
			control.door_out = door_out;
			var myFade = instance_create_layer(0,0,"GUI",room_fade);
			myFade.toGo = room_to;
		}
	}
}