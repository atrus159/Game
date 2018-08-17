camera_set_view_size(mouse.myCamera,640,480);
camera_set_view_pos(mouse.myCamera, x-540,y-150);
	var offset = 0;
with(pc_character){
	direction = 180
	x = other.x -32;
	y = other.y +65*offset;
	if(offset<=0){
		offset *= -1;	
		offset +=1;
	}else{
		offset	*=-1;
	}
}