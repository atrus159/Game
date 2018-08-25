draw_set_font(Main_Font);
if(toContinue){
	if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),textX,textY,textX+string_width(myText), textY+string_height(myText))){
		draw_set_color(c_white);
	}else{
		draw_set_color(c_ltgray);	
	}
	draw_sprite(space_bar,-1,textX-35,textY+5);
	draw_text_ext_transformed(textX,textY,"press space to continue",20,1000,global.MonitorH/1080,global.MonitorH/1080,0);
}
else{
if(myScript = noone){
	draw_set_font(Header_font);
	draw_set_color(c_white);
		draw_set_halign(fa_center)
	draw_text_ext_transformed(textX,textY,myText,30,(control.draw_width-3*control.inventory_slot_size),global.MonitorH/1080,global.MonitorH/1080,0);
		draw_set_halign(fa_left)
}
else{
	draw_set_color(c_black);
	draw_circle(textX-10,textY+10,5,false);
	if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),textX,textY,textX+control.text_width, textY+string_height(myText))){
		draw_set_color(c_white);
	}else{
		draw_set_color(c_lime);	
	}
	draw_text_ext_transformed(textX,textY,myText,20,control.text_width,global.MonitorH/1080,global.MonitorH/1080,0);
}
}