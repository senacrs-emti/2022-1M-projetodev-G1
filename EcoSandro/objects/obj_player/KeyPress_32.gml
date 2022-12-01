if (grounded)
{
	vel_y = -jump_speed;

	sprite_index = spr_player_jump;
	image_index = 0;

	grounded = false;

	instance_create_layer(x, bbox_bottom, "Instances", obj_effect_jump);
}