draw_set_font(GUI_font)
//draw_text(100,100,global.MonitorW);
//draw_text(200,100,global.MonitorH);


//draw pickup t

/*with(item){
	if(dropped){
		if (!point_in_rectangle(x, y, view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0])) {
		if(distance_to_object(instance_nearest(x,y,pc_character))<64){
				draw_set_alpha(0.7);	
		}else{
				draw_set_alpha(0.2);	
		}
		draw_sprite(T_sprt,other.image_index,get_gui_x(x-15),get_gui_y(y-15));
		//draw_sprite(T_sprt,other.image_index,x-camera_get_view_x(mouse.myCamera),y-camera_get_view_y(mouse.myCamera));
		draw_set_alpha(1);
	}
}
}*/

//draw healthbars
with(character_generic){
	if(char_health < char_max_health){
		//if (!point_in_rectangle(x, y, view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0])) {
			draw_set_alpha(0.5)
			draw_set_color(c_black)
			draw_rectangle(get_gui_x(x)-32,get_gui_y(y)+32,get_gui_x(x)+32,get_gui_y(y)+40,false);
			draw_set_color(c_lime)
			draw_rectangle(get_gui_x(x)-30,get_gui_y(y)+34,get_gui_x(x)+(char_health/char_max_health)*60-30,get_gui_y(y)+38,false);	
			draw_set_alpha(1);
		//}
	}
	
}


//draw hud
draw_set_color(c_dkgray);
draw_rectangle(draw_zeroX,draw_height-hud_height,draw_width,draw_height,false);
draw_set_color(c_black);
draw_line_width(draw_zeroX-1,draw_height-hud_height,draw_zeroX-1,draw_height-5,hud_edge_weigth);
draw_line_width(draw_zeroX-1,draw_height-hud_height,draw_width,draw_height-hud_height,hud_edge_weigth);
draw_line_width(draw_zeroX-1,draw_height-5,draw_width,draw_height-5,hud_edge_weigth);
draw_line_width(draw_width,draw_height-hud_height,draw_width,draw_height-5,hud_edge_weigth);


//draw select bar
draw_sprite_ext(select_tile_frame,-1,draw_zeroX+5,draw_height-hud_height,draw_width/1024,1,0,c_white,1);
for(var i = 0; i<ds_list_size(selected);i++){
var obj = ds_list_find_value(selected,i);
draw_sprite(select_tile_temp,-1,draw_zeroX+5+i*54,draw_height-hud_height);
if(instance_exists(obj)){
switch(obj.object_index){
	case nicole_char:
	draw_sprite(nicole_select,-1,draw_zeroX+5+i*54,draw_height-hud_height);
	break;
	case pink_character:
	draw_sprite(p2_select,-1,draw_zeroX+5+i*54,draw_height-hud_height);
	break;
	case green_character:
	draw_sprite(p3_select,-1,draw_zeroX+5+i*54,draw_height-hud_height);
	break;
}
}
}


//draw numbers
draw_set_font(GUI_font);
draw_set_color(c_lime);
draw_text(draw_zeroX+20+i*54,draw_height-hud_height,ds_list_size(selected));


//draw inventory slots
for(i = 0; i<inventory_size;i++){
	draw_set_color(c_black);
	//draw_rectangle(get_inventoryX(i)-inventory_slot_size/2,get_inventoryY(i)-inventory_slot_size/2,get_inventoryX(i)+inventory_slot_size/2,get_inventoryY(i)+inventory_slot_size/2,true);
	draw_sprite(inventory_slot,-1,get_inventoryX(i),get_inventoryY(i));
}

//draw money
draw_set_font(GUI_font);
draw_set_color(c_lime);
draw_text(draw_width*(5/6+1/124),draw_height-hud_height-3,"$"+string(money))


//draw inventory items
if(ds_list_size(selected)!=0){
	var inventory = ds_list_find_value(selected,0).inventory;
	for(i = 0; i<ds_list_size(inventory);i++){
		var currentObject = ds_list_find_value(inventory,i)
		draw_sprite(currentObject.sprite_inventory,-1,get_inventoryX(i),get_inventoryY(i))
		
		if(currentObject.cooldown_timer>0){
			var ct = currentObject.cooldown_timer;
			var c = currentObject.cooldown;
			draw_set_alpha(0.5);
			draw_sprite(item_cooldown,	25*(c-ct)/c,get_inventoryX(i),get_inventoryY(i));
			draw_set_alpha(1);
		}
		
		draw_set_color(c_black)
		draw_circle(get_inventoryX(i)-inventory_slot_size/2,get_inventoryY(i)-inventory_slot_size/2,7,false)
		draw_set_color(c_lime)
		draw_circle(get_inventoryX(i)-inventory_slot_size/2,get_inventoryY(i)-inventory_slot_size/2,7,true)
		draw_set_font(small_font)
		draw_set_color(c_lime)
		draw_text(get_inventoryX(i)-inventory_slot_size/2-4,get_inventoryY(i)-inventory_slot_size/2-9,get_inv_button(i));
		if(currentObject.uses_energy){
			draw_set_color(c_black)
			draw_rectangle(get_inventoryX(i)+inventory_slot_size/2-5,get_inventoryY(i)-inventory_slot_size/2+2,get_inventoryX(i)+inventory_slot_size/2,get_inventoryY(i)+inventory_slot_size/2-2, false)
			draw_set_color(c_aqua)
			var offset = (currentObject.energy/currentObject.max_energy)*(inventory_slot_size-4)
			draw_rectangle(get_inventoryX(i)+inventory_slot_size/2-4,get_inventoryY(i)+inventory_slot_size/2-2-offset,get_inventoryX(i)+inventory_slot_size/2-1,get_inventoryY(i)+inventory_slot_size/2-2, false)
			
		}
	}
	
	//draw tooltips
	for(i = 0; i<ds_list_size(inventory);i++){
		var toDraw = ds_list_find_value(inventory,i);
		//if(point_in_rectangle(window_mouse_get_x()-control.draw_zeroX-32*window_get_fullscreen(),window_mouse_get_y(),get_inventoryX(i)-inventory_slot_size/2,get_inventoryY(i)-inventory_slot_size/2,get_inventoryX(i)+inventory_slot_size/2,get_inventoryY(i)+inventory_slot_size/2)){
		if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),get_inventoryX(i)-inventory_slot_size/2,get_inventoryY(i)-inventory_slot_size/2,get_inventoryX(i)+inventory_slot_size/2,get_inventoryY(i)+inventory_slot_size/2)){	
			draw_set_alpha(0.7);
			draw_sprite(tool_tip,-1,get_inventoryX(i)-10,get_inventoryY(i)-10);
			draw_set_alpha(1);
			draw_set_font(tool_tip_font);
			draw_set_color(c_black);
			draw_text_ext(get_inventoryX(i)-100,get_inventoryY(i)-100,toDraw.tool_tip_txt,10,80);

		}

	}
	
	
	
}

