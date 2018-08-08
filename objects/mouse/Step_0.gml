var xOffset = camera_get_view_x(mouse.myCamera)+camera_get_view_width(mouse.myCamera)/2
var yOffset = camera_get_view_y(mouse.myCamera)+camera_get_view_height(mouse.myCamera)/2
var xDisp = mouse_x - xOffset;
var yDisp = mouse_y - yOffset;
//x=xDisp*(1+0.4*window_get_color())+xOffset;
//y=yDisp*(1+0.4*window_get_color())+yOffset;
x=mouse_x
y = mouse_y