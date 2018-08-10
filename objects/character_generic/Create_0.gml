event_inherited()
enum MoveTypes{
	move,
	attack
}

destinationX = -1;
destinationY = -1;
moveType = MoveTypes.move;
my_blocker = 0;

foot_timer = 0;
foot_facing = 0;
turn_speed = 1;
foot_left = nicole_left_foot
foot_right = nicole_right_foot

inventory = ds_list_create();
char_health = 100;
char_max_health = 100;
