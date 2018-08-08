x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
px = argument4;
py = argument5;
rad = argument6/2;

if(rectangle_in_circle(x1,y1,x2,y2,px,py,rad)){
	return true;	
}else if(rectangle_in_circle(x2,y2,x1,y1,px,py,rad)){
	return true;
}else if(rectangle_in_circle(x1,y2,x2,y1,px,py,rad)){
	return true;
}else if(rectangle_in_circle(x2,y1,x1,y2,px,py,rad)){
	return true;
}else{
return false;	
}