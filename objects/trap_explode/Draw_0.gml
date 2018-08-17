if(tdir == 0){
	t+=1;	
}else{
  t-= 3;	
}
if(t == 38){
  tdir = 1;	
}
if(t <0){
	created_trap.pickable = 1;
	instance_destroy(self);	
}
draw_set_color(c_lime)
draw_set_alpha(0.2);
draw_circle(x,y,132,false);
draw_set_alpha(1);
draw_sprite(sprite_index,t,x+random(64)-32,y+random(64)-32);
draw_sprite(sprite_index,t,x+random(64)-32,y+random(64)-32);
draw_sprite(sprite_index,t,x+random(64)-32,y+random(64)-32);
draw_sprite(sprite_index,t,x+random(64)-32,y+random(64)-32);
draw_sprite(sprite_index,t,x+random(64)-32,y+random(64)-32);