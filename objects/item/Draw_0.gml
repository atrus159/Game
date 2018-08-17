if(tdir == 0){
	t +=1;	
}else{
	t-=1;
}
if(t> 150){
	tdir = 1;
}
if(t<50){
	tdir = 0;	
}

if(dropped){
	draw_sprite_ext(sprite_dropped,-1,x,y,t/150,t/150,t*2,c_white,1);
	draw_set_color(c_lime);
	draw_circle(x,y,15,true);
}
