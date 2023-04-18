spr = global.pause

if(global.pause)
{
	var lay_id = layer_get_id("Ground");
	if (layer_get_hspeed(lay_id) != 0)
	{
	    layer_hspeed(lay_id, 0);
	}
}

else
{
	var lay_id = layer_get_id("Ground");
	if (layer_get_hspeed(lay_id) == 0 and global.start)
	{
	    layer_hspeed(lay_id, -1);
	}
}