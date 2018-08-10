hud_edge_weigth = 10;


selecting = false;
selected = ds_list_create();
selectX = 0;
selectY = 0;
select_distance = 10;
text_width = 300;
text_height = 30;
paused = false;
inventory_size = 9;
//window_set_fullscreen(true);
//window_set_rectangle(100,100,1024,768);
//application_surface_draw_enable(false);
global.MonitorW=display_get_width();
global.MonitorH=display_get_height();

global.MonitorW = 1080;
global.MonitorH = 770
//surface_resize(application_surface,1024,768)
global.Xoffset=(global.MonitorW-1024)/2;
global.Yoffset=(global.MonitorH-768)/2;

draw_zeroX = 0;
draw_zeroY = global.Yoffset;

draw_height = global.MonitorH; //surface_get_height(application_surface)+draw_zeroY
draw_width = global.MonitorW-global.Xoffset;//surface_get_width(application_surface)+draw_zeroX


ep_to_money = 1;
money = 0;
hud_height = (200/768)*draw_height//150;
inventory_slot_size = 55//(hud_height-72)/3;


door_out = noone;
dont_deselect = 0;

//Names
tomas_name = "BOUNCER"
maxie_name = "WOMAN"
doug_name = "OLD MAN"
benny_name = "HOMELESS MAN"
people_known = ds_list_create();
ds_list_add(people_known,"Alexander");
ds_list_add(people_known,"Benny");
ds_list_add(people_known,"Evelyn");

//conversation flags
conv_flag_1 = 0;
conv_flag_2 = 1;
conv_flag_3 = 0;
conv_flag_4 = 0;
conv_flag_5 = 0;
conv_flag_6 = 0;

//key timers
for(var i = 0; i<inventory_size; i++){
	key_timer[i]=0;	
}

key_double_press_time = 30;