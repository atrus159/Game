with(text_element){
	instance_destroy(self);
}
create_header("They leave without another word, footsteps slowly receding into the night");
night.myAlpha = 1;
create_space(next_room);
var myFade = instance_create_layer(0,0,"enviornmental",fade);
myFade.tMax = 60;
with(sound_control){
		audio_sound_gain(my_audio,0,1000);
}
