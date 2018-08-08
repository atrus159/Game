if(!paused){
var index = 4
if(key_timer[index] == 0){
 key_timer[index] =1;	
}else{
	 key_timer[index] =0;	
	if(ds_list_size(selected)!=0){
		var inventory = ds_list_find_value(selected,0).inventory;
		var myItem = ds_list_find_value(inventory,index)
		with(myItem){
			if(!dropped && holder != noone && ds_list_find_value(control.selected,0)==holder && !control.paused && cooldown_timer == 0){
			cooldown_timer = cooldown
			script_execute(use);
			}
		}
	}
}
}