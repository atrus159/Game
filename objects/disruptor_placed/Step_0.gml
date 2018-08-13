if(target != noone && instance_exists(target)){
if(target.stored || target.store_x != -1 || target.store_y != -1){
	target = noone;

}
}
if(target != noone){
	facing = 180-darctan2(y-target.y,x-target.x)	
}
var count = 1;
var this = id
with(disruptor_placed){
	if(this != id){
	if(distance_to_object(other) <300){
		if(target != noone){
		count +=1;	
		}
	}
	}
}
switch(count){
	default:
		stage = 0.55
	break;
	case 1:
		stage = 1;
	break;
	case 2:
		stage = 0.7;
	break;
}