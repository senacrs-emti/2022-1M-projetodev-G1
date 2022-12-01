if (in_knockback)
{
	exit;
}

vel_x = -move_speed;

if (sprite_index == spr_player_fall)
{
	exit;
}

if (grounded)
{
	sprite_index = spr_player_walk;
}