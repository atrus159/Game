if(t<(tMax+10)){
	t++	
}else{
	control.paused = 0;
	mouse.fixed_camera = 0;
	instance_destroy(self);
	room_goto(toGo);

}
draw_set_alpha(t/tMax);
draw_set_color(c_black);
draw_rectangle(0,0,window_get_width(),window_get_height(),false);
draw_set_alpha(1);