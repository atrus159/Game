var distx = dcos(argument1);
var disty = -dsin(argument1);

repeat(argument2+1){
   if(!place_meeting(x,y,argument0)){ return; }
   x += distx;
   y += disty;
}
   x += distx;
   y += disty;