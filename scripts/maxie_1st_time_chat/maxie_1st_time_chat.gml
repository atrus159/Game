with(text_element){
	instance_destroy(self);
}

create_header("The smile fades\n"+control.maxie_name+" - \"Listen kid. I'm a busy woman. I ain't got time to chat all day.\"");
create_option("\"S-sorry to bother you.\"",exit_dialogue,0);
create_option("\"How about some gossip?.\"",maxie_1st_time_gossip,1);
