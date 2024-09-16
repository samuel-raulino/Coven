/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
for(var xx = 0; xx < ds_grid_width(global.inventario); xx++){
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
}