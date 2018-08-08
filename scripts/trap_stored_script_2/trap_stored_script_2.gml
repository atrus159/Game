exit_dialogue();
with(trap_stored){
	if(useFlag){
var invIndex = ds_list_find_index(holder.inventory,self);
delete_id = holder.inventory;
delete_pos = invIndex;
instance_create_layer(holder.x,holder.y,"lighting",trap_release);
for(var i = 0; i<ds_list_size(stored_list); i+=1){
	with(ds_list_find_value(stored_list,i)){
		x = other.holder.x;
		y = other.holder.y;
		move_outside_object(pc_character,random(360),64);
		move_outside_object(spirit,random(360),200);
		stored = 0;
	}
}
delete_flag = 1;
	}
}