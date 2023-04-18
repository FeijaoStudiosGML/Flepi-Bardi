//Pausando o jogo
if(keyboard_check_pressed(ord("P")))
{
	global.pause = !global.pause
}

//Reiniciando o jogo
if(keyboard_check_pressed(ord("R")))
{
	game_restart()
}

//Saindo do jogo
if(keyboard_check_pressed(vk_escape))
{
	game_end()
}