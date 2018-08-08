camera_set_view_size(mouse.myCamera,640,480);
camera_set_view_pos(mouse.myCamera, x-100,y-150);
	var offset = 0;
with(pc_character){
	direction = 0;
	x = other.x +64;
	y = other.y +65*offset;
	if(offset<=0){
		offset *= -1;	
		offset +=1;
	}else{
		offset	*=-1;
	}
}