with(pc_character){
if(dragging != noone){
	dragging.dragged = 0;
	dragging = noone;
	walkSpeed *=2
	turn_speed *=2
}
}
with(downed_char){
instance_activate_object(character_stored)
var n = 0;
//instance_activate_all()
character_stored.x = x;
character_stored.y = y;
instance_destroy(self)	
}
exit_dialogue()