/// @description Draws player related vars to GUI

// if player is armed
if (isArmed)
{
	// draw current ammo count above player character
	draw_text(x + 40, y - 40, string(currAmmo) + " / " + string(maxAmmo));
}

// if player has trap materials
if (materialsCount > 0)
{
	// draw current material count above player
	draw_text(x + 40, y - 20, string(materialsCount));
}