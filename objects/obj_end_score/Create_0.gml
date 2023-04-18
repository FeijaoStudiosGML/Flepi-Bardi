font_map = "0123456789"
font = font_add_sprite_ext(spr_font, font_map, false, 1)

cam_w = camera_get_view_width(view_camera[0])
cam_h = camera_get_view_height(view_camera[0])

gui_w = cam_w
gui_h = cam_h
display_set_gui_size(gui_w, gui_h)

spr_medal = 0