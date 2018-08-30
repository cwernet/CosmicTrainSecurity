/// @description When user clicks left mouse button

// if player is armed and has ammo
if (isArmed && currAmmo > 0)
{
	// fire bullet
	instance_create_layer(x, y, "Projectiles", obj_bullet)
	currAmmo -= 1
	
	//play the sound effect 
	audio_play_sound(playerShooting_sfx,1,false);
}