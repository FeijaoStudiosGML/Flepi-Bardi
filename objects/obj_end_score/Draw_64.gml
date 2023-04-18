//Score
var _x = sprite_get_width(spr_end_score) - 10

draw_set_font(font)
draw_set_halign(fa_right)

draw_text(x + _x, y + 21, global.score)

//Medal
draw_sprite(spr_end_medal, spr_medal, x + 13, y + 21)

//Restart
draw_set_font(fnt_restart)
draw_set_halign(fa_center)

draw_text_color_outline(room_width/2, 200, "CLICK TO RESTART", 2, c_black, 4, 20, 144)

//Reset
draw_set_font(-1)
draw_set_halign(-1)

//New Best Score
if(global.novo == true)
{
	draw_sprite(spr_new_score, 0, x + _x - 1, y + 42)
}