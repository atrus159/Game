if(link1 && instance_exists(link1) && link2 && instance_exists(link2)){
	x = (link1.x+link2.x)/2
	y = (link1.y+link2.y)/2
	var linkDirection = -darctan2(link1.y-link2.y,link1.x-link2.x)
	var linkDist = point_distance(link1.x,link1.y,link2.x,link2.y);	
	image_xscale = linkDist/11;
	image_angle = linkDirection;
}else{
	instance_destroy(self);	
}