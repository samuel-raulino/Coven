/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
#region sprites
var a = point_direction(x,y,mouse_x,mouse_y)
if(hspd = 0 and vspd = 0){
if a >=0 and a<=30{
	image_index = 2
	image_xscale = 1
}else if a >30 and a<=60{
	image_index = 3
	image_xscale = 1
}else if a >60 and a<=90{
	image_index = 4
	image_xscale = 1
}else if a >90 and a<=120{
	image_index = 3
	image_xscale = -1
}else if a >120 and a<=150{
	image_index = 2
	image_xscale = -1
}else if a >150 and a<=180{
	image_index = 2
	image_xscale = -1
}else if a >180 and a<=210{
	image_index = 1
	image_xscale = -1
}else if a >210 and a<=240{
	image_index = 1
	image_xscale = -1
}else if a >240 and a<=270{
	image_index = 0
	image_xscale = -1
}else if a >240 and a<=300{
	image_index = 0
	image_xscale = 1
}else if a >300 and a<=330{
	image_index = 1
	image_xscale = 1
}else if a >330 and a<=360{
	image_index = 2
	image_xscale = 1
}
sprite_index = spr_player
}else{
if hspd>0{
	sprite_index = spr_player_walk
	image_xscale = 1
}else if hspd<0{
	sprite_index = spr_player_walk
	image_xscale = -1
}
if vspd>0{
	sprite_index = spr_player_walk_down
	image_xscale = 1
}else if vspd<0{
	sprite_index = spr_player_walk_up
	image_xscale = 1
}
}
#endregion
#region move
movex = +keyboard_check(vk_right)-keyboard_check(vk_left)
movey = +keyboard_check(vk_down)-keyboard_check(vk_up)
hspd = movex*spd
vspd = movey*spd
if(place_meeting(x+hspd,y,obj_block)){
	while(!place_meeting(x+sign(hspd),y,obj_block)){
		x+=sign(hspd)	
	}
	hspd = 0
}
if(place_meeting(x,y+vspd,obj_block)){
	while(!place_meeting(x,y+sign(vspd),obj_block)){
		y+=sign(vspd)	
	}
	vspd = 0
}
x+=hspd
y+=vspd
#endregion
#region debug
if(keyboard_check_pressed(vk_space)){
	scr_add_item(spr_gun,true,"gun")
}
#endregion