event_inherited();

// defino o comando que dita que o sprite irá mudar

switch (sprite_index)
{
	
// cito as condições de mudança.
//Neste caso quando a animação atual for a de caminhada e a velocidade alterar, dependendo da alteração
//Uma nova animação será tocada

case spr_player_walk:
		image_speed = 1;
	
		if (vel_x == 0)
		{
			sprite_index = spr_player_idle;
		}
		if (vel_y > 1)
		{
			sprite_index = spr_player_fall;
			image_index = 0;
		}
		break;

case spr_player_jump:
		if (vel_y >= 0)
		{
			sprite_index = spr_player_fall;
			image_index = 0;
		
			image_speed = 1;
		}
		break;
	
	case spr_player_fall:
		if (grounded)
		{
			sprite_index = spr_player_idle;
		
			image_speed = 1;
		
		}
		break;

	case spr_player_hurt:
		if (grounded)
		{
			var _dust = instance_create_layer(x, bbox_bottom, layer, obj_effect_knockback);
		
			_dust.image_xscale = image_xscale;
		}
		break;

	default:
		image_speed = 1;
		break;
}