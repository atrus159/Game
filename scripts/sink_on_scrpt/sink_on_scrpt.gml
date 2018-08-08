
with(text_element){
	instance_destroy(self);
}
create_header("This sink is on. It makes a quiet gurgling sound");
create_option("Turn the sink off",sink_scrpt,0);
create_option("Leave",exit_dialogue,1);
control.paused = true;
mouse.fixed_camera = true;
with(sink_up){
if(being_read){
self.sink_running = 1;
being_read = 0;
}
}