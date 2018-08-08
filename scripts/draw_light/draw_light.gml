var ligthIntensity = argument0
var lightColor = argument1
draw_set_alpha(0.005)
for(var i = 1; i<ligthIntensity; i++){
	draw_circle_color(x,y,(10*ligthIntensity)/i^2,lightColor,lightColor,false);	
}

draw_set_alpha(1);