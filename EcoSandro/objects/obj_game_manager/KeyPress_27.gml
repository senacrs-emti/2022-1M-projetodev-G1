if (!paused)
{
	instance_deactivate_all(true);
	pause_sequence = layer_sequence_create("Instances", 0, 0, seq_pause_menu);
	paused = true;
}
else
{
	instance_activate_all();
	layer_sequence_destroy(pause_sequence);
	paused = false;
}