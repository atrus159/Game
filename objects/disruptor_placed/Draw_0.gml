if(target != noone){
	var color =  c_red;
	var alpha = 0.3
	switch(stage){
		case 1:
		alpha = 0.3
		color = c_aqua
		break;
		case 0.7:
		alpha = 0.3*0.7
		color = c_yellow
		break;
		case 0.55:
		alpha = 0.3*0.55
		color = c_orange
		break;
	}
	draw_set_alpha(alpha)
	draw_set_color(color)
	var xoff = lengthdir_x(30,180-darctan2(y-target.y,x-target.x))
	var yoff = lengthdir_y(30,180-darctan2(y-target.y,x-target.x))
	draw_line_width(x,y,target.x-xoff,target.y-yoff,30)
	draw_sprite_ext(disruptor_focus,-1,target.x+1,target.y+1,1,1,180-darctan2(y-target.y,x-target.x),color,alpha);
	//draw_circle(target.x,target.y,50,false)
	draw_set_alpha(1)
}
draw_sprite_ext(disruptor_sprt,(target == noone),x,y,1,1,facing,c_white,1)
//draw_text(x,y,stage);