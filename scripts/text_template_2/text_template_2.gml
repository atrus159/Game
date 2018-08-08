with(text_element){
	instance_destroy(self);
}
create_header("This is the header for text box 2.");
create_option("This goes to text box 0",text_template,0);
create_option("This goes to text box 1",text_template_1,1);
create_option("This exits the dialogue",exit_dialogue,2);
create_option("This does nothing",noop,3);
create_option("This does nothing32456",noop,4);
create_option("This does nothing13232",noop,5);
create_option("This does nothingsdff",noop,6);
create_option("This does nothing   ",noop,7);
create_option("This does nothing3",noop,8);
create_option("This does nothing",noop,9);
create_option("This does nothing ",noop,10);


control.paused = true;
