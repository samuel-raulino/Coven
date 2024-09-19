/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(inv == true){
	/*for(var xx = 0; xx < ds_grid_width(global.inventario); xx++){
		for(var yy = 0; yy < ds_grid_height(global.inventario); yy++){
			var slot = ds_grid_get(global.inventario,xx,yy)
			draw_sprite(slot[0],0,xx*42,yy*32)
			draw_text(xx*42,yy*32,slot[1])
		}
	}
	for (var i = 0; i < ds_grid_width(global.inventario); i++) {
	    for (var j = 0; j < ds_grid_height(global.inventario); j++) {
			//show_debug_message(ds_grid_get(global.inventario,i,j))
		}
	}*/
	draw_set_color(c_black)
	draw_rectangle(0,0,display_get_width(),display_get_height(),0)
	xscale = 1.59*1.5
	yscale = 1.97*1.5
	draw_sprite_ext(spr_inv,0,640,290,1.5,1.5,0,c_white,1)
	for(var xx = 0; xx < ds_grid_width(global.inventario); xx++){
		for(var yy = 0; yy < ds_grid_height(global.inventario); yy++){
			var slot = ds_grid_get(global.inventario,xx,yy)
			var _pix = (640+120+30+2)
			var _piy = (34+105)
			distx = (xx*(42*xscale))
			disty = (yy*(32*yscale))
			
			draw_sprite_ext(slot[0],0,_pix+ distx,_piy + disty,xscale,yscale,0,c_white,1)
			draw_set_color(c_white)
			draw_self()
			draw_set_font(fnt_pixel)
			draw_text(_pix + distx+72,_piy+disty+72,slot[1])
		}
	}
}