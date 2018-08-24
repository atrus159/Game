var xOffset = camera_get_view_x(mouse.myCamera)+camera_get_view_width(mouse.myCamera)/2
var yOffset = camera_get_view_y(mouse.myCamera)+camera_get_view_height(mouse.myCamera)/2
var xDisp = mouse_x - xOffset;
var yDisp = mouse_y - yOffset;
//x=xDisp*(1+0.4*window_get_color())+xOffset;
//y=yDisp*(1+0.4*window_get_color())+yOffset;
x=mouse_x
y = mouse_y
if(!fixed_camera){
	
	camera_set_view_border(myCamera, camera_get_view_width(myCamera)/12.8*0.2, camera_get_view_height(myCamera)/9.6*0.2);
	//camera_set_view_speed(myCamera, camera_get_view_width(myCamera)/128,camera_get_view_height(myCamera)/96);
	camera_set_view_speed(myCamera, 3*camera_get_view_width(myCamera)/128,3*camera_get_view_height(myCamera)/96);
	//camera_set_view_speed(myCamera, 200,200);
	
	//if(+mouse_y-camera_get_view_y(myCamera)>(camera_get_view_height(myCamera)*((view_get_hport(0)-control.hud_height)/view_get_hport(0)))){
	//	camera_set_view_target(myCamera,noone);
	//}else{
	//	camera_set_view_target(myCamera,mouse);
	//	if(mouse_y-camera_get_view_y(myCamera)>(camera_get_view_height(myCamera)*((view_get_hport(0)-control.hud_height-100)/view_get_hport(0)))){
	//		camera_set_view_pos(myCamera, camera_get_view_x(myCamera),camera_get_view_y(myCamera)+camera_get_view_speed_y(myCamera));
	//	}
	//}
}else{
	camera_set_view_speed(myCamera,0,0);
}