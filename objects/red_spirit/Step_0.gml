event_inherited()
if(!control.paused && !stored && store_x == -1 && store_y == -1){

	switch(state){
		case 0:
		facing += d_offset;
		if(!random(100)){
			d_target = random(360)
		}
		if(!instance_exists(red_spirit_focus)){
			instance_create_layer(x,y,"ground",red_spirit_focus)
		}else if(distance_to_object(red_spirit_focus)>100){
			d_target = -darctan2(red_spirit_focus.y-y,red_spirit_focus.x-x)
		}
		
		d_offset = angle_difference(d_target,facing)/45
		mp_potential_step_object(x+cos(-degtorad(facing))*10,y+sin(-degtorad(facing))*10,3/(disable_stack+1),spirit_wall)
		nearest = instance_nearest(x,y,pc_character);
		if(nearest != noone && distance_to_object(nearest)<300){
		if(!random(100)){
			var myShot = instance_create_layer(x,y,"lighting",red_spirit_attack);
			myShot.target = self;
			state = 1;
		}
		}
		break;
		case 1:
		if(nearest == noone || !instance_exists(nearest)){
				state = 0;
				break;
		}
		t +=1;
		if(t>120){
			t = 0;
			state = 0;
		}
		d_target = -darctan2(nearest.y-y,nearest.x-x)	
		d_offset = angle_difference(d_target,facing)/20
		facing += d_offset;
		mp_potential_step_object(x+cos(-degtorad(facing))*10,y+sin(-degtorad(facing))*10,5/(disable_stack+1),spirit_wall)
		break;
		
	}




}