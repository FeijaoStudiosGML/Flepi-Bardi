function wave()
{
	///@arg from
	///@arg to
	///@arg duration
	///@arg offset
	
	a4 = (argument[1] - argument[0]) * 0.5
	return argument[0] + a4 + sin((((current_time * 0.001) + argument[2] * argument[3]) / argument[2]) * (pi*2)) * a4
}

function draw_text_color_outline()
{
    ///@arg x
    ///@arg y
    ///@arg str
    ///@arg outwidth
    ///@arg outcol
    ///@arg outfidelity
    ///@arg separation
    ///@arg width
	
    var dto_dcol = draw_get_color()
 
    draw_set_color(argument[4])
 
    for(var dto_i=45; dto_i<405; dto_i+=360/argument[5])
    {
      draw_text_ext(argument[0]+round(lengthdir_x(argument[3],dto_i)), argument[1]+round(lengthdir_y(argument[3],dto_i)), argument[2], argument[6], argument[7])
    }
 
    draw_set_color(dto_dcol)
 
    draw_text_ext(argument[0], argument[1], argument[2], argument[6], argument[7])
}

function lose()
{
	var lay_id = layer_get_id("Ground");
	if (layer_get_hspeed(lay_id) != 0)
	{
	    layer_hspeed(lay_id, 0);
	}

	global.dead = true
	global.start = false
	global.click = false
	audio_play_sound(snd_hit, irandom_range(5, 15), false)
	alarm[1] = 45
	
	global.fim = true
	if(global.score > global.rank)
	{
		global.rank = global.score
		global.novo = true
	}
}

function restart()
{
	global.click = true
	global.pause = false
	global.start = false
	global.dead = false
	global.fim = false
	global.novo = false
	global.score = 0
	room_goto(rm_menu)
}