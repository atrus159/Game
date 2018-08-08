with(text_element){
	instance_destroy(self);
}
create_header("Maxie folds her hands across her stomach and settles in.\n"+control.maxie_name+" - \"Man it has been to long since i've told some proper gossip. So kid, who'd ya like to hear about?\"");
create_option("\"Who can you tell me about?\"",Maxie_explain,0);
if(ds_list_find_index(control.people_known,"Maxie")  != -1){
	create_option("\"How about you?\"",Maxie_self,1);
}
if(ds_list_find_index(control.people_known,"Doug")  != -1){
	create_option("\"Doug\"",Maxie_doug,5);
}
if(ds_list_find_index(control.people_known,"Lin")  != -1){
	create_option("\"Lin\"",Maxie_lin,3);
}
if(ds_list_find_index(control.people_known,"Tomas")  != -1){
	create_option("\"The bouncer\"",Maxie_tomas,4);
}


create_space(maxie_gossip_hub_2);