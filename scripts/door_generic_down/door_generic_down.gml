camera_set_view_size(mouse.myCamera,640,480);
camera_set_view_pos(mouse.myCamera, x-320,y-300);
var offset = 0;
with(pc_character){
	direction = 90;
	x = other.x +65*offset;
	y = other.y - 32;
	if(offset<=0){
		offset *= -1;	
		offset +=1;
	}else{
		offset	*=-1;
	}
}