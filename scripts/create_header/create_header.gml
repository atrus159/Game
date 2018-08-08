var text = argument0;
var element = instance_create_depth(0,0,0,text_element);
element.textX = control.draw_zeroX + (control.draw_width-3*control.inventory_slot_size)/2
element.textY = control.draw_height-control.hud_height+40;
element.myText = text;
element.myScript = noone;