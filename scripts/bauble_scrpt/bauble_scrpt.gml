cooldown_timer = 0;
if(!instance_exists(blink_zone)){
	zone = instance_create_layer(holder.x,holder.y,"GUI", blink_zone);
	zone.holder = holder
}