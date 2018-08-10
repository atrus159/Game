//you made it to an end step
if(delete_pos != -1){
	ds_list_delete(delete_id,delete_pos);
	delete_pos = -1;
	delete_id = -1;
}
if(delete_flag){
instance_destroy(self);	
}
if(dropped){
	persistent = false;	
}else{
	persistent = true;	
}
if(cooldown_timer >0){
	cooldown_timer -=1;	
}

