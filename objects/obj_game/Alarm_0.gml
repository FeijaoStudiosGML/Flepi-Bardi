if(global.pause == false)
{
	//Criando os Canos
	var _margin = 40
	var _spr = sprite_get_height(spr_pipe_down)

	var _x = room_width + 50
	var _y1 = irandom_range(-135, -20)
	var _y2 = _y1 + _spr + _margin

	var p_up = instance_create_layer(_x, _y1, "Pipes", obj_pipe)
		p_up.sprite_index = spr_pipe_up
	
	var p_down = instance_create_layer(_x, _y2, "Pipes", obj_pipe)
		p_down.sprite_index = spr_pipe_down
	
	var coin = instance_create_layer(_x, _y1 + _spr, "Pipes", obj_point)
		coin.target = p_down.id
}

alarm[0] = timer