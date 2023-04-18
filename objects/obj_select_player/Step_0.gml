if(keyboard_check_pressed(ord("D")))
{
	global.player += 1
}

if(keyboard_check_pressed(ord("A")))
{
	global.player -= 1
}

if(global.player < 0)
{
	global.player = 39
}

else if(global.player > 39)
{
	global.player = 0
}