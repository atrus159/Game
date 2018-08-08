var myY = argument0;

var disp = (myY-camera_get_view_y(mouse.myCamera))
var c_height = camera_get_view_height(mouse.myCamera)
var screen_height = global.MonitorH

return disp*(screen_height/c_height);