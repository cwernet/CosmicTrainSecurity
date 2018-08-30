/// @description Collision with pistol

// if player isn't already armed, arm player
if (!isArmed)
{
	isArmed = true
	currAmmo = maxAmmo
	
	//play gun pickup sound 
	audio_play_sound(GunPickup_sfx,3,false);
	
	// destroy pistol pickup
	instance_destroy(other)
}