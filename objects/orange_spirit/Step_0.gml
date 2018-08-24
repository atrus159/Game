event_inherited()
if(!control.paused && !stored && store_x == -1 && store_y == -1){
	var nearest = instance_nearest(x,y,pc_character);
	switch(state){
		case 0:
			t += random(4);
		if(t>60*4){
		if(!instance_exists(orange_spirit_focus)){
			instance_create_layer(x,y,"ground",orange_spirit_focus)
		}else{
			destinationX = x+random(500) - 250;
			destinationY = y+random(500) - 250;
			if(distance_to_object(orange_spirit_focus)<400){
			while(point_distance(destinationX,destinationY,orange_spirit_focus.x,orange_spirit_focus.y)>300){
				destinationX = x+random(500) - 250;
				destinationY = y+random(500) - 250;	
			}
			}else{
				destinationX = orange_spirit_focus.x+random(500) - 250;
				destinationY = orange_spirit_focus.y+random(500) - 250;		
			}
			t = 0;
			find_space();
			}
		}
		mp_potential_step_object(destinationX,destinationY,3/(disable_stack+1),spirit_wall);
		facing = direction;
		if(nearest != noone && distance_to_object(nearest)<=200 && distance_to_object(orange_spirit_focus)<400){
			state  = 1;
			t = 0;
		}
		break;
		case 1:
		if(nearest == noone){
			state = 0
			break;
		}
		if(distance_to_object(orange_spirit_focus) > 300){
			state = 0;	
		}
		facing = 180-darctan2(y-nearest.y,x-nearest.x);
		var dist = distance_to_object(nearest);
		if(dist>200 && dist <300){
			mp_potential_step_object(nearest.x,nearest.y,5/(disable_stack+1),spirit_wall);
		}else if(dist<180){
				t += 1;
			mp_potential_step_object(nearest.x,nearest.y,-5/(disable_stack+1),spirit_wall);
		}else if(dist>=300){
			state = 0;
			t = 0;
			destinationX = x;
			destinationY = y;
		}else{
			t += 1;
			if(t> 60){
				t = 0;
				state = 2;
			}
		}
		break;
		
		case 2:
				if(nearest == noone){
				sprite_index = orange_spirit_sprt;
				state = 0
				break;
				}
				facing = 180-darctan2(y-nearest.y,x-nearest.x);
				sprite_index = orange_spirit_attack_sprt;
				t +=1;
				if(t = 20){
					instance_create_layer(nearest.x,nearest.y,"lighting",orange_spirit_attack);
				}
				if(t>30){
					t = 0;
					state = 1;
					sprite_index = orange_spirit_sprt;
					
				}
		break;
		
	}




}