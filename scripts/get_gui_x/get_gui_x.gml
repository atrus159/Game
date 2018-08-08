var myX = argument0;

var disp = (myX-camera_get_view_x(mouse.myCamera))
var c_width = camera_get_view_width(mouse.myCamera)
var screen_width = control.draw_width;

return disp*(screen_width/c_width);