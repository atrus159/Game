event_inherited()
if(dropped && instance_exists(zone)){
	instance_destroy(zone);
	zone = noone;
}