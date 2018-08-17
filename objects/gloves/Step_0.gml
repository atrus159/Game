event_inherited()
if(on){
	sprite_inventory = gloves_inventory_on;	
	use = gloves_on
	if(!control.paused){
	if(energy>3){
	energy -=3;	
	}else{
		script_execute(use)
	}
	}
}else{
	sprite_inventory = gloves_inventory_off;	
	use = gloves_off
	if(!control.paused && energy < max_energy){
	energy +=1;
	}
}