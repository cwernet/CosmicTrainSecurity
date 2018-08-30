/// @description Called when player hits F1

// enter and exit fullscreen
isFullscreen = !isFullscreen;

// swaps in and out of fullscreen as intended
if (isFullscreen)
{
	window_set_fullscreen(true);
}
else
{
	window_set_fullscreen(false);
}