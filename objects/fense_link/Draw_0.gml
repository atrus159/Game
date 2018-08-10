draw_set_alpha(0.5);
draw_set_color(c_aqua);
draw_line_width(link1.x,link1.y,link2.x,link2.y,11);
draw_triangle(link1.x,link1.y,link2.x,link2.y,x+random(64)-32,y+random(64)-32,true);
draw_set_alpha(1);