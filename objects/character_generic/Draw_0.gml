
if(!control.paused){
if(destinationX != -1 && destinationY != -1){
	if(foot_facing == 0){
		foot_timer +=walkSpeed;
	}else{
		foot_timer -=walkSpeed;
	}
}else{
	foot_timer = 0;
}

if(foot_timer>=walkSpeed*(10 / walkSpeed)){
	foot_facing = 1;
}
if(foot_timer<=-walkSpeed*(10 / walkSpeed)){
	foot_facing = 0;
}
}
draw_sprite_ext(foot_right,-1,x+foot_timer*cos(-degtorad(direction)),y+foot_timer*sin(-degtorad(direction)),1,1,direction,c_white,1);
draw_sprite_ext(foot_left,-1,x+foot_timer*cos(-degtorad(180+direction)),y+foot_timer*sin(-degtorad(180+direction)),1,1,direction,c_white,1);
if(destinationX != -1 && destinationY != -1){
	switch(moveType){
		case MoveTypes.move:
			draw_sprite(move_icon_sprt, -1, destinationX,destinationY);
		break;
		case MoveTypes.attack:
			draw_sprite(attack_icon_sprt, -1,destinationX,destinationY);
		break;
	}
}

draw_sprite_ext(sprite_index, -1, x, y, 1, 1, direction, c_white, 1);


if(selected){
	draw_set_color(c_lime){
		draw_rectangle(x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2, true);
	}
}
