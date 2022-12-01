function check_collision(_move_x, _move_y) 
{
	if (place_meeting(x + _move_x, y + _move_y, obj_collision))
	{
		return true;
	}
	var _left_top = tilemap_get_at_pixel(obj_game_manager.collision_tilemap, bbox_left + _move_x, bbox_top + _move_y);
	var _right_top = tilemap_get_at_pixel(obj_game_manager.collision_tilemap, bbox_right + _move_x, bbox_top + _move_y);
	var _right_bottom = tilemap_get_at_pixel(obj_game_manager.collision_tilemap, bbox_right + _move_x, bbox_bottom + _move_y);
	var _left_bottom = tilemap_get_at_pixel(obj_game_manager.collision_tilemap, bbox_left + _move_x, bbox_bottom + _move_y);
	if (_left_top or _right_top or _right_bottom or _left_bottom)
	{
		return true;
	}
	return false;
}