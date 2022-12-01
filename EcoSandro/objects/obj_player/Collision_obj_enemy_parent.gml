if (vel_y > 0)
{
	if ((bbox_bottom - vel_y) < (other.bbox_top - other.vel_y))
	{
		other.hp = 0;
	
		vel_y = -jump_speed;
	
		sprite_index = spr_player_jump;
		image_index = 0;
	
		image_speed = 1;
	
		instance_create_layer(x, bbox_bottom, "Instances", obj_effect_jump);
	
		audio_play_sound(snd_enemy_hit, 0, 0);
		
		var _sound = audio_play_sound(snd_jump, 0, 0);
		audio_sound_pitch(_sound, random_range(0.8, 1));
	
		exit;
	}
}

if (no_hurt_frames > 0)
{
	exit;
}

var _x_sign = sign(x - other.x);

vel_x = _x_sign * 15;

hp -= other.damage;
in_knockback = true;

no_hurt_frames = 120;

sprite_index = spr_player_hurt;
image_index = 0;

alarm[0] = 15;
