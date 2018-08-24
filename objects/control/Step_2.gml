for(var i = 0; i< inventory_size; i++){
	if(key_timer[i] != 0){
		key_timer[i] ++;
		if(key_timer[i]>key_double_press_time){
			key_timer[i] = 0;
		}
	}
}
/*if(!window_get_fullscreen()){
	window_set_fullscreen(1)	
}*/