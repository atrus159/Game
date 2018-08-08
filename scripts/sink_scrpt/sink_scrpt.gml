
with(text_element){
	instance_destroy(self);
}
create_header("This sink is off");
create_option("Turn the sink on",sink_on_scrpt,0);
create_option("Leave",exit_dialogue,1);

control.paused = true;
mouse.fixed_camera = true;
with(sink_up){
if(being_read){
self.sink_running = 0;
being_read = 0;
}
}
