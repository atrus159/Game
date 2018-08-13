if(!stored){
	if(store_x == -1 && store_y == -1){
		draw_sprite_ext(sprite_index,-1,x,y,1,1,facing,c_white,1);
		draw_sprite_ext(sprite_index,-1,x,y,random(0.3)+1.5,random(0.3)+1.5,facing,c_white,0.4);
	}else{
		var dist = distance_to_point(store_x,store_y);
		draw_sprite_ext(sprite_index,-1,x,y,dist/50,1,-darctan2(y-store_y,x-store_x),c_white,dist/100);
	}
}
//draw_text(x,y,disable_stack);