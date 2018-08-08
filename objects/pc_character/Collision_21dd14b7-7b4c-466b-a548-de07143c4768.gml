char_health -=other.dps;
if(ds_list_find_index(attacks_hit,other)==-1){
	ds_list_add(attacks_hit,other);	
	char_health -= other.damage;
}