with(text_element){
	instance_destroy(self);
}

create_header(control.maxie_name+" - \"Well. I got some good stories about Lin down at the laundromat. Boy do I got some stories about  her. Then of course there’s the bouncer over at that new club they setting up.\"");
ds_list_add(control.people_known, "Lin");
ds_list_add(control.people_known, "Tomas");
create_space(maxie_gossip_hub);