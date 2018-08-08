with(text_element){
	instance_destroy(self);
}
point_characters(benny_char,false);
control.conv_flag_2 = 0;
benny_char.y -=10;
point_characters(benny_char,true);
create_header("Imediately, his posture changes. He seems to shrink back against the wall.\n"+control.benny_name+" - \"It's...It's Evelyn isn't it?\"");
create_option("\"I...yeah. How did you know?\"",benny_evelyn_2,0);
