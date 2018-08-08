if(selected){
	if(mouse_check_button_pressed(mb_right)){
		destinationX = mouse.x;
		destinationY = mouse.y;
		moveType = MoveTypes.move;
		if(my_blocker!=noone){
		instance_destroy(my_blocker);
		}
		find_space();
		my_blocker = instance_create_layer(destinationX,destinationY,"Instances",move_blocker);
	}
}