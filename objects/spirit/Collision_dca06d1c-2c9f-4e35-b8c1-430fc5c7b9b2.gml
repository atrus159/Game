if(!control.paused && !stored && store_x == -1 && store_y == -1){
move_outside_object(spirit_wall,-darctan2(y-other.y,x-other.x),distance_to_point(other.x,other.y));
}