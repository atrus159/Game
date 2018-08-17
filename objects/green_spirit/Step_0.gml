event_inherited()
if(!control.paused && !stored && store_x == -1 && store_y == -1){
	var nearest = instance_nearest(x,y,pc_character);
	switch(state){
		case 0:
			t += random(4);
		if(t>60*4){
		if(!instance_exists(green_spirit_focus)){
			instance_create_layer(x,y,"ground",green_spirit_focus)
		}else{

				destinationX = green_spirit_focus.x+random(300) - 150;
				destinationY = green_spirit_focus.y+random(300) - 150;	
				t = 0;
				find_space();
			}
		}
		var mspeed = 2
		if(disable_stack>=0){
			mspeed=2/(disable_stack+1)
		}
		mp_potential_step_object(destinationX,destinationY,mspeed,spirit_wall);
		facing = direction;
		if(nearest != noone && distance_to_object(nearest)<=150){
			state  = 1;
			t = 0;
		}
		break;
		case 1:
		if(nearest == noone){
			state = 0;
			break;
		}
		facing = 180-darctan2(y-nearest.y,x-nearest.x);
		var dist = distance_to_object(nearest);
		var mspeed = 3
		if(disable_stack>=0){
			mspeed=3/(disable_stack+1)
		}
		if(dist>20 && dist <200){
			mp_potential_step_object(nearest.x,nearest.y,mspeed,spirit_wall);
		}else if(dist<10){
				t += 1;
			mp_potential_step_object(nearest.x,nearest.y,-mspeed,spirit_wall);
		}else if(dist>=200){
			state = 0;
			t = 0;
			destinationX = x;
			destinationY = y;
		}else{
			t += 1;
			if(t> 1){
				t = 0;
				state = 2;
			}
		}
		break;
		
		case 2:
				if(nearest == noone){
				sprite_index = green_spirit_sprt;
				state = 0;
				break;
				}
				facing = 180-darctan2(y-nearest.y,x-nearest.x);
				sprite_index =green_spirit_attack_sprt;
				image_index = t;
				t +=1;
				if(t = 26){
					instance_create_layer(x,y,"ground",green_spirit_attack);
				}
				if(t>30){
					t = 0;
					state = 1;
					sprite_index = green_spirit_sprt;
					
				}
		break;
		
	}




}