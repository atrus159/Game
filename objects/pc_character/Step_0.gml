
	event_inherited()
	if(dragging != noone){
		dragging.drag_direction = 90+darctan2(x-dragging.x,y-dragging.y);
		dragging.x = x+cos(-degtorad(direction+180))*40
		dragging.y = y+sin(-degtorad(direction+180))*40
	}
