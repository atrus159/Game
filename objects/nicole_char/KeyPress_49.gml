		with(pc_character){
			if(!keyboard_check(vk_shift)){
			selected = false;
			}
		}
		selected = true
		ds_list_clear(control.selected);
		ds_list_add(control.selected,self);