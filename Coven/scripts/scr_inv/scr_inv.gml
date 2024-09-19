// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_add_item(item,contable,type,qtd){
	if contable {
		show_debug_message(item)
		for(var yy = 0; yy < ds_grid_height(global.inventario);yy++){
			for(var xx = 0; xx < ds_grid_width(global.inventario);xx++){
		
				var slot = ds_grid_get(global.inventario,xx,yy)
				if slot[2] = type or slot[2] = "slot"{
					cont = slot[1]+qtd
					ds_grid_set(global.inventario,xx,yy,[item,cont,type])
					break
				}
			}
			if slot[2] = type or slot[2] = "slot"{
					cont = slot[1]+qtd
					ds_grid_set(global.inventario,xx,yy,[item,cont,type])
					break
			}
		}
	}else{
			for(var yy = 0; yy < ds_grid_height(global.inventario);yy++){
			for(var xx = 0; xx < ds_grid_width(global.inventario);xx++){
		
				var slot = ds_grid_get(global.inventario,xx,yy)
				if slot[1] =0 and slot[2] = "slot"{
					ds_grid_set(global.inventario,xx,yy,[item,qtd])
					break
				}else{
					show_debug_message("erro")	
					show_debug_message(slot[1])
				}
			
			
			}
			if slot[1] =0 and slot[2] = "slot"{
					ds_grid_set(global.inventario,xx,yy,[item,contable,type])
					break
			}
		}
	}
}