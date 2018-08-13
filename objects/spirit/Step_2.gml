if(stored){
	persistent = true;	
}else{
	persistent = false;	
}
var count = 0;
with(disruptor_placed){
	if(target ==other){
		count += stage;	
	}
}
disable_stack = starting_stack + count;