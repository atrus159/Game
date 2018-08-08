with(text_element){
	instance_destroy(self);
}
create_header("Maxie folds her hands across her stomach and settles in.\n"+control.maxie_name+" - \"Man it has been to long since i've told some proper gossip. So kid, who'd ya like to hear about?\"");
if(ds_list_find_index(control.people_known,"Evelyn")  != -1){
	create_option("\"Evelyn\"",Maxie_evelyn,0);
}
if(ds_list_find_index(control.people_known,"Alexander") != -1){
	create_option("\"Alexander\"",Maxie_alexander,1);
}
if(ds_list_find_index(control.people_known,"Benny")  != -1){
	create_option("\"The drunk\"",Maxie_benny,2);
}
create_option("\"Nothing now, thanks.\"",Maxie_exit,5);
create_option("\"Actualy I'd like to buy a slice\"",exit_dialogue,4);
create_option("\"Anything strange?\"",exit_dialogue,3);
create_space(maxie_gossip_hub);