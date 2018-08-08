if(!fixed_camera){
	if(camera_get_view_width(myCamera)*1.1<=room_width){
		var cameraX = x-camera_get_view_x(myCamera);
		var cameraY = y-camera_get_view_y(myCamera);
		camera_set_view_size(myCamera,camera_get_view_width(myCamera)*1.1,camera_get_view_height(myCamera)*1.1);
		camera_set_view_pos(myCamera,x-cameraX*1.1,y-cameraY*1.1);
	}
}