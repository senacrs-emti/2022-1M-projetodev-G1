grounded = check_collision(0, 1);

if (grounded)
{
	grounded_x = x;
	grounded_y = y;
}

if (round(vel_x) != 0)
{
	var _friction_applied = sign(vel_x) * friction_power;
	if (!grounded)
	{
		_friction_applied = _friction_applied / 4;
	}
	vel_x -= _friction_applied;
}
else
{
	vel_x = 0;
}
vel_y += grav_speed;