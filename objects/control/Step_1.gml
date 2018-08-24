if(mouse_check_button_pressed(mb_left)){
	if(!point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),mini_map_x,mini_map_y,mini_map_x+mini_map_size,mini_map_y+mini_map_size)){
	selecting = true;
	selectX = mouse.x;
	selectY = mouse.y;
	}
}
if(mouse_check_button(mb_left)){
	if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),mini_map_x,mini_map_y,mini_map_x+mini_map_size,mini_map_y+mini_map_size)){
		var factor = 0;
		var x_map_off = 0;
		var y_map_off = 0;
		if(room_height>room_width){
			factor = mini_map_size/room_height	
			x_map_off = (mini_map_size-room_width*factor)/2
		}else{
			factor = mini_map_size/room_width
			y_map_off = (mini_map_size-room_height*factor)/2
		}
		var xPos = (device_mouse_x_to_gui(0)-mini_map_x-x_map_off)/factor-camera_get_view_width(mouse.myCamera)/2
		var yPos = (device_mouse_y_to_gui(0)-mini_map_y-y_map_off)/factor-camera_get_view_height(mouse.myCamera)/2
		if(xPos < 0){
			xPos = 0	
		}
		if(yPos <0){
			yPos = 0
		}
		if(xPos + camera_get_view_width(mouse.myCamera) > room_width){
			xPos = room_width-camera_get_view_width(mouse.myCamera)
		}
		if(yPos + camera_get_view_height(mouse.myCamera) > room_height){
			yPos = room_height-camera_get_view_height(mouse.myCamera)
		}
		camera_set_view_pos(mouse.myCamera,xPos,yPos);
	}
}

if(mouse_check_button_released(mb_left)){
	if(selecting && !mouse.fixed_camera){

		if(!keyboard_check(vk_shift)){
			if(!dont_deselect ){
				ds_list_clear(selected);
			}
		}
		with(pc_character){
			if(!keyboard_check(vk_shift)){
				if(!control.dont_deselect ){
				selected = false;
				}
			}
			if(box_select(other.selectX,other.selectY,mouse.x,mouse.y, x, y, sprite_width)){
				selected = true;
				if(ds_list_find_index(other.selected,self) == -1){
				ds_list_add(other.selected,self);
				}
			}
		}
		selecting = false;
		if(dont_deselect){
			dont_deselect = false;		
		}
	}else{
		selecting = false;	
	}
}



//movement
if(mouse_check_button_pressed(mb_right)){
	var avgX = 0;
	var avgY = 0;
	var count = 0;
	with(pc_character){
		if(selected){
		if(my_blocker!=noone){
			instance_destroy(my_blocker);
		}
		avgX += x;
		avgY += y
		count +=1
		}
	}
	if(count!=0){
	avgX /=count;
	avgY /=count;
	var xPos = mouse_x;
	var yPos = mouse_y
	
	if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),mini_map_x,mini_map_y,mini_map_x+mini_map_size,mini_map_y+mini_map_size)){
		var factor = 0;
		var x_map_off = 0;
		var y_map_off = 0;
		if(room_height>room_width){
			factor = mini_map_size/room_height	
			x_map_off = (mini_map_size-room_width*factor)/2
		}else{
			factor = mini_map_size/room_width
			y_map_off = (mini_map_size-room_height*factor)/2
		}
		xPos = (device_mouse_x_to_gui(0)-mini_map_x-x_map_off)/factor
		yPos = (device_mouse_y_to_gui(0)-mini_map_y-y_map_off)/factor
		if(xPos < 0){
			xPos = 0	
		}
		if(yPos <0){
			yPos = 0
		}
		if(xPos > room_width){
			xPos = room_width
		}
		if(yPos > room_height){
			yPos = room_height
		}
	}
	
	
	create_move_markers(count,180-darctan2(yPos-avgY,xPos-avgX), xPos, yPos)
		with(move_marker){
			var n = 0;
			var nearest = instance_nearest(x,y,pc_character)
			while(!nearest.selected || nearest.chosen){
				n+=1
				nearest = instance_nth_nearest(x,y,pc_character,n)
			}
			with(nearest){
				chosen = 1;
				destinationX = other.x;
				destinationY = other.y;
				moveType = MoveTypes.move;
				if(my_blocker!=noone){
					instance_destroy(my_blocker);
				}
				find_space();
				my_blocker = instance_create_layer(destinationX,destinationY,"Instances",move_blocker);		
			}
			instance_destroy(self)
		}
		with(pc_character){
			chosen = 0;	
		}
	}

}




