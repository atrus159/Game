if(mouse_check_button_pressed(mb_left)){
	instance_destroy(self);	
}

if(!control.paused){
	if(mouse_check_button_pressed(mb_right)){
		var hX = holder.x
		var hY = holder.y;
		var hold = holder
		if(point_distance(hX,hY,mouse.x,mouse.y)<range){
		with(pc_character){
			with(bauble){
				if(holder = hold){
					cooldown_timer = cooldown;
				}
			}
			if(distance_to_point(hX,hY)<other.pickup_range){
					var relX = x-hX;
					var relY = y-hY;
					if(!place_meeting(mouse_x+relX,mouse_y+relY,avoidable)){
						instance_create_layer(x,y,"lighting",blink_out);
						x = mouse_x+relX;
						y = mouse_y+relY;
						instance_create_layer(x,y,"lighting",blink_in);
						destinationX = x
						destinationY = y;
					}
			}
		}

	}
		instance_destroy(self);
	}

}