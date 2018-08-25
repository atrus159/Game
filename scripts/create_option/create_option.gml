var text = argument0;
var script = argument1;
var number = argument2;
var element = instance_create_depth(0,0,0,text_element);
var header = noone
with(text_element){
	if(myScript = noone){
		header = self
	}
}
draw_set_font(Header_font);
var header_height = string_height(header.myText)
draw_set_font(Main_Font);
var offset = 64//32+control.text_width/2;
if(number mod 2 == 0){
	offset = 64-control.text_width//-32 - control.text_width;
}
element.textX = control.draw_zeroX + (control.draw_width-3*control.inventory_slot_size)/2+offset;
element.textY = control.draw_height-control.hud_height+72+header_height + control.text_height*(number div 2);
element.myText = text;
element.myScript = script;