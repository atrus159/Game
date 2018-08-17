with(pc_character){
	var index = ds_list_find_index(attacks_hit,other)
	if(index != -1){
		ds_list_delete(attacks_hit, index)	
	}
}