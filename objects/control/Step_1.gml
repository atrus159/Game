if(mouse_check_button_pressed(mb_left)){	
	selecting = true;
	selectX = mouse.x;
	selectY = mouse.y;
}

if(mouse_check_button_released(mb_left)){
	if(selecting && !mouse.fixed_camera){
		if(!keyboard_check(vk_shift)){
		ds_list_clear(selected);
		}
		with(pc_character){
			if(!keyboard_check(vk_shift)){
			selected = false;
			}
			if(box_select(other.selectX,other.selectY,mouse.x,mouse.y, x, y, sprite_width)){
				selected = true;
				if(ds_list_find_index(other.selected,self) == -1){
				ds_list_add(other.selected,self);
				}
			}
		}
		selecting = false;
	}else{
		selecting = false;	
	}
}