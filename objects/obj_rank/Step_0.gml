#region Salvando

if(global.fim)
{
	var save = "save.leo"
	if(file_exists(save))
	{
		file_delete(save)
	}

	ini_open(save)
		
	var _best_score = base64_encode(string(global.rank))
	ini_write_string("Player", "BestScore", _best_score)
	
	var _player = base64_encode(string(global.player))
	ini_write_string("Player", "Player", _player)
			
	ini_close()
}

var save = "save.leo"
ini_open(save)
var _player = base64_encode(string(global.player))
ini_write_string("Player", "Player", _player)		
ini_close()

#endregion