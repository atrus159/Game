if(myScript != noone){
	if(mouse_check_button_pressed(mb_left)){
		draw_set_font(Main_Font);
		if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),textX,textY,textX+control.text_width, textY+string_height(myText))){
			control.dont_deselect = 1;
			script_execute(myScript);	
		}
	}
}