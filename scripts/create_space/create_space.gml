var script = argument0;

var element = instance_create_depth(0,0,0,text_element);
draw_set_font(Main_Font)
element.textX = control.draw_zeroX + (control.draw_width-3*control.inventory_slot_size+control.mini_map_size)/2-string_width("Press space to continue")/2;
element.textY =control.draw_zeroY+control.draw_height-40;
element.toContinue = 1;
element.myScript = script;