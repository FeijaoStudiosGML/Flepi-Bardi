if(room == rm_rank)
{
	draw_set_font(fnt_restart)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)

	draw_text_color_outline( 
							 room_width/2,
							 room_height/2 - 30,
							 "BEST SCORE",
							 2, c_black, 4, 20, 144
							)
						
	draw_set_font(font)
	draw_text(room_width/2, room_height/2 - 5, global.rank)

	//Reset
	draw_set_font(-1)
	draw_set_halign(-1)
	draw_set_valign(-1)
}