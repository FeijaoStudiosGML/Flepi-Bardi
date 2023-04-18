font_map = "0123456789"
font = font_add_sprite_ext(spr_font, font_map, false, 1)

cam_w = camera_get_view_width(view_camera[0])
cam_h = camera_get_view_height(view_camera[0])

gui_w = cam_w
gui_h = cam_h
display_set_gui_size(gui_w, gui_h)

#region Carregando

var save = "save.leo"
if(file_exists(save))
{
	ini_open(save)
	
		var _best_score = ini_read_string("Player", "BestScore", 0)
		_best_score = real(base64_decode(_best_score))
		global.rank = _best_score
		
		var _player = ini_read_string("Player", "Player", 0)
		_player = real(base64_decode(_player))
		global.player = _player
		
	ini_close()
}

#endregion