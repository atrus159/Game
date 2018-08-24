var number = argument0
var angle = argument1
var relX = argument2;
var relY = argument3;

switch(number){
	case 1:
	instance_create_layer(relX,relY,"ground",move_marker)
	break;
	case 2:
	instance_create_layer(relX+lengthdir_x(32,angle+90),relY+lengthdir_y(32,angle+90),"ground",move_marker)
	instance_create_layer(relX+lengthdir_x(32,angle-90),relY+lengthdir_y(32,angle-90),"ground",move_marker)
	break;
	case 3:
	instance_create_layer(relX+lengthdir_x(64,angle+60),relY+lengthdir_y(64,angle+60),"ground",move_marker)
	instance_create_layer(relX+lengthdir_x(64,angle-60),relY+lengthdir_y(64,angle-60),"ground",move_marker)
	instance_create_layer(relX,relY,"ground",move_marker)
	break;
	case 4:
	
	break;
	case 5:
	
	break;
}