/// @description Draws player related vars to GUI

// if player is armed, draw their current ammo count
if (isArmed)
{
	// draw current ammo count above player character
	draw_text(x + 40, y - 40, string(currAmmo) + " / " + string(maxAmmo)) 
}