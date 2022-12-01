event_inherited();

// Defino quando o personagem poderá atirar

if mouse_check_button(mb_left) && garrafa > 0 && Canshoot = true{
	instance_create_layer(x, y, "instances", obj_garrafa_ataque)
	garrafa -= 1;
	Canshoot = false
	alarm[1] = room_speed*2
}