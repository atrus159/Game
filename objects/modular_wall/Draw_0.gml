var left_sub, right_sub, top_sub, bot_sub, tr_sub, tl_sub, br_sub, bl_sub;

if(instance_position(x,y-64,object)){
	top_sub = 0;
}else{
	top_sub = 1;
}
if(instance_position(x,y+64,object)){
	bot_sub = 0;
}else{
	bot_sub = 1;
}
if(instance_position(x-64,y,object)){
	left_sub = 0;
}else{
	left_sub = 1;
}
if(instance_position(x+64,y,object)){
	right_sub = 0;
}else{
	right_sub = 1;
}

if(instance_position(x-64,y-64,object)){
	if(!left_sub){
		if(!top_sub){
			tl_sub = 0;	
		}else{
			tl_sub = 3;	
		}
	}else{
		if(!top_sub){
			tl_sub = 4;	
		}else{
			tl_sub = 2;	
		}	
	}
}else{
	if(!left_sub){
		if(!top_sub){
			tl_sub = 1;	
		}else{
			tl_sub = 3;	
		}
	}else{
		if(!top_sub){
			tl_sub = 4;	
		}else{
			tl_sub = 2;	
		}	
	}	
}

if(instance_position(x+64,y-64,object)){
	if(!top_sub){
		if(!right_sub){
			tr_sub = 0;	
		}else{
			tr_sub = 3;	
		}
	}else{
		if(!right_sub){
			tr_sub = 4;	
		}else{
			tr_sub = 2;	
		}	
	}
}else{
	if(!top_sub){
		if(!right_sub){
			tr_sub = 1;	
		}else{
			tr_sub = 3;	
		}
	}else{
		if(!right_sub){
			tr_sub = 4;	
		}else{
			tr_sub = 2;	
		}	
	}	
}

if(instance_position(x+64,y+64,object)){
	if(!right_sub){
		if(!bot_sub){
			br_sub = 0;	
		}else{
			br_sub = 3;	
		}
	}else{
		if(!bot_sub){
			br_sub = 4;	
		}else{
			br_sub = 2;	
		}	
	}
}else{
	if(!right_sub){
		if(!bot_sub){
			br_sub = 1;	
		}else{
			br_sub = 3;	
		}
	}else{
		if(!bot_sub){
			br_sub = 4;	
		}else{
			br_sub = 2;	
		}	
	}	
}
if(instance_position(x-64,y+64,object)){
	if(!bot_sub){
		if(!left_sub){
			bl_sub = 0;	
		}else{
			bl_sub = 3;	
		}
	}else{
		if(!left_sub){
			bl_sub = 4;	
		}else{
			bl_sub = 2;	
		}	
	}
}else{
	if(!bot_sub){
		if(!left_sub){
			bl_sub = 1;	
		}else{
			bl_sub = 3;	
		}
	}else{
		if(!left_sub){
			bl_sub = 4;	
		}else{
			bl_sub = 2;	
		}	
	}	
}

draw_sprite(top,top_sub,x,y);
draw_sprite(bottom,bot_sub,x,y);
draw_sprite(left,left_sub,x,y);
draw_sprite(right,right_sub,x,y);
draw_sprite(top_left,tl_sub,x,y);
draw_sprite(top_right,tr_sub,x,y);
draw_sprite(bottom_left,bl_sub,x,y);
draw_sprite(bottom_right,br_sub,x,y);
