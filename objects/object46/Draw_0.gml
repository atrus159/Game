draw_sprite(sprite_index,-1,x,y);
if(fadeFlag){
fadeT += 1;
draw_set_alpha(fadeT/60);
draw_set_color(c_black);
draw_rectangle(0,0,1024,768,false);
draw_set_alpha(1);
if(fadeT>=90){
room_goto_next()	
}
}