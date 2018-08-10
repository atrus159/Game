var nearest = instance_nearest_notme(pc_character)
if(distance_to_object(nearest)<64 && nearest.dragging == noone){
	nearest.dragging = self
	self.dragged = 1;
	nearest.walkSpeed /=2
	nearest.turn_speed /=2
}