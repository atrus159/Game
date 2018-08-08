with(text_element){
	instance_destroy(self);
}

create_header(control.maxie_name+" - \"What's this, an interrogation?\"\n she shakes her head and sighs.\n"+control.maxie_name+" - \"Been running this pizza place for about five years now. It's become the town scuttlebut, it has. They all come here on their lunch breaks or days off and tell me their stories. And some stories, i'll tell you. My husband's that goodfornothin' lout Doug.\"");
ds_list_add(control.people_known, "Doug");
create_space(maxie_gossip_hub);