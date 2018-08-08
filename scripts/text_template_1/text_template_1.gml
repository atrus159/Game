with(text_element){
	instance_destroy(self);
}
create_header("This is the header for text box 1.");
create_option("This goes to text box 0",text_template,0);
create_option("This goes to text box 2",text_template_2,1);
control.paused = true;
