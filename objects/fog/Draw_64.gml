if(tdir = 0){
	t+=random(10);
}else{
	t-=1;	
}
if(t>600){	
	tdir = random(10);
}
else if (t<300){
	tdir = 0
}
draw_set_alpha(t/1000);
draw_set_color(c_ltgray);
draw_rectangle(0,0,window_get_width(),window_get_height(),false);
draw_set_alpha(1);