if(mouse_check_button(mb_left)){
	if(t ==-1){
	control.dont_deselect = true;
	t = 120;
	}
}
if(t != -1){
	t -=1;
	if(t == 0){
		var facing = -darctan2(mouse_y-y,mouse_x-x)
		var nearestWall = collision_line_first(x,y,x+lengthdir_x(1000,facing),y+lengthdir_y(1000,facing),wall,true,true)
		var dist = 10000
		if(nearestWall != noone){
			dist = distance_to_point(nearestWall.x,nearestWall.y)+32	
		}
		var placed = instance_create_depth(x,y,layer_get_depth("lighting")+1,disruptor_placed)
		placed.target = collision_line_first(x,y,x+lengthdir_x(dist,facing),y+lengthdir_y(dist,facing),spirit,true,true)
		placed.facing = facing
		instance_destroy(self);
	}
}