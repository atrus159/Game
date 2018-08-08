var target = argument0
var to_point = argument1

with(pc_character){
	destinationX = -1;
	destinationY = -1;
	foot_timer = 0;
	direction = 180-darctan2(self.y-target.y,self.x-target.x)
}
if(to_point){
	var nearest = instance_nearest(target.x,target.y,pc_character);
	target.direction = 180-darctan2(target.y-nearest.y,target.x-nearest.x)
}