var facing = -darctan2(mouse_y-y,mouse_x-x)
var nearestWall = collision_line_first(x,y,x+lengthdir_x(1000,facing),y+lengthdir_y(1000,facing),wall,true,true)
var dist = 10000
if(nearestWall != noone){
	dist = distance_to_point(nearestWall.x,nearestWall.y)+32
}

if(t != -1){
	draw_set_color(c_red)
	if(t >80){
		draw_set_alpha(0.1)	
	}else if(t>40){
		draw_set_alpha(0.4)
	}else{
		draw_set_alpha(0.7)	
	}
	draw_line_width(x,y,x+lengthdir_x(dist,facing),y+lengthdir_y(dist,facing),5)
	draw_set_alpha(1);
}
draw_sprite_ext(disruptor_sprt,(t == -1),x,y,1,1,facing,c_white,1)