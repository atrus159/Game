//with(pc_character){
//	if(door_out && instance_exists(door_out)){
//		x = door_out.x+70*cos(degtorad(door_out.facing));
//		y = door_out.y+70*sin(degtorad(door_out.facing));
//		door_out = noone;
//	}
//}
if(door_out != noone){
	with(door){
		if(object_index == other.door_out){
			script_execute(placement);	

		}
	}
	door_out = noone
}