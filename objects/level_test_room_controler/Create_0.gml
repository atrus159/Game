if(!instance_exists(control)){
	instance_create_layer(0,0,"control",control)
	camera_set_view_pos(mouse.myCamera,nicole_char.x-250,nicole_char.y-250);
}

control.advice_text = "In this building there are 8 spirits. Find all of them and bring them to me, and I'll pay. Carefull, they're dangerous! If one of you gets seriously hurt you can always come to me."