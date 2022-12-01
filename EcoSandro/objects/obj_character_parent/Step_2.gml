if (vel_x < 0)
{
	image_xscale = -1;
	image_yscale = 1;
}
else if (vel_x > 0)
{
	image_xscale = 1;
	image_yscale = 1;
}

if (hp <= 0)
{
	instance_create_layer(x, y, layer, obj_player_defeated);
	instance_destroy();
}

if (no_hurt_frames > 0)
{
	no_hurt_frames -= 1;

	if (no_hurt_frames % 12 > 6)
	{
		image_alpha = 0;
	}
	else
	{
		image_alpha = 1;
	}
}