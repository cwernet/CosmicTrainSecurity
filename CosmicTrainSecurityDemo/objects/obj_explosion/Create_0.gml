/// @description Used for initialization

// set duration counter in frames
counter = duration;

// if explosion sound effect isn't currently playing
if (!audio_is_playing(sfx_explosion))
{
	// play explosion sound effect
	audio_play_sound(sfx_explosion, 1, false);
}