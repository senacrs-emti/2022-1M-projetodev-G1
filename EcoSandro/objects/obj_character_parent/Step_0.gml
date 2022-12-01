var _move_count = abs(vel_x);
var _move_once = sign(vel_x);

repeat (_move_count)
{
	var _collision_found = check_collision(_move_once, 0);

	if (!_collision_found)
	{
		x += _move_once;
	}
	else
	{
		vel_x = 0;
	
		break;
	}
}

var _move_count = abs(vel_y);
var _move_once = sign(vel_y);

repeat (_move_count)
{
	var _collision_found = check_collision(0, _move_once);

	if (!_collision_found)
	{
		y += _move_once;
	}
	else
	{
		vel_y = 0;
	
		break;
	}
}