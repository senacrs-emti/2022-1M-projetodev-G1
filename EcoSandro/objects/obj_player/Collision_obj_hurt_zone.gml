hp -= 1;

if (hp > 0)
{
	x = grounded_x;
	y = grounded_y;

	no_hurt_frames += 120;

	vel_x = 0;
	vel_y = 0;

	in_knockback = true;

	alarm[0] = 20;
}