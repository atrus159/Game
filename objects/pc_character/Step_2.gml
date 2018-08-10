event_inherited()
if(char_health<=0){
	char_health = 0
	if(dragging != noone){
	dragging.x = x;
	dragging.y = y;
	dragging.dragged = 0;
	dragging = noone;
	walkSpeed *=2
	turn_speed *=2
	}
	var myDowned = instance_create_layer(x,y,"ground",downed_char)
	myDowned.downed_sprite = downed_sprite
	myDowned.character_stored = id;
	char_health = char_max_health
	destinationX = -1;
	destinationY = -1;
	
	for(var i = 0; i<ds_list_size(inventory); i+=1){
		with(ds_list_find_value(inventory,i)){
			var invIndex = ds_list_find_index(holder.inventory,self);
				dropped = 1;
				x = holder.x+random(64)-32;
				y = holder.y+random(64)-32;
				holder = noone;	
		}
	}
	ds_list_clear(inventory);
	
	instance_deactivate_object(self)
}