with(text_element){
	instance_destroy(self);
}

point_characters(benny_char,true);
create_header("The man settles down comfortably.\n"+control.benny_name+" - \"Go on.\"");
create_option("\"Tell me about your self.\"",benny_self,0)
create_option("\"Anything strange?\"",benny_strange,1)
if(control.conv_flag_4){
create_option("\"Doug thinks you stole some beer from his store.\"",benny_stole,2)	
}
