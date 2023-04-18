if(global.pause) exit
if(!global.start) 
{
	if(!global.dead)
	{
		y = wave(ystart-3, ystart+3, 2, 0)
	}
	exit
}


velv += grav
velv = clamp(velv, -velv_max, velv_max)
angle = clamp(angle, 45, 315)
angle = lerp(angle, -velv * 15, .5)

#region Move and Collide

//Collision
if(place_meeting(x, y + velv, obj_wall))
{
	while(!place_meeting(x, y + sign(velv), obj_wall))
	{
		y += sign(velv)
	}
	velv = 0
}

//Moving
y += velv

#endregion

#region Lose

//Ground
if(place_meeting(x, y + 1, obj_wall))
{
	lose()
}

//Pipe
if(place_meeting(x, y, obj_pipe))
{
	lose()
}

#endregion
