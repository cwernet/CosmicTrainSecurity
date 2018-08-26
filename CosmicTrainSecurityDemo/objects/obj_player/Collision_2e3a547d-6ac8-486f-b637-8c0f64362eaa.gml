/// @description Collision with pistol

// if player isn't already armed, arm player
if (!isArmed)
{
	isArmed = true
	currAmmo = maxAmmo
	
	// destroy pistol pickup
	instance_destroy(other)
}