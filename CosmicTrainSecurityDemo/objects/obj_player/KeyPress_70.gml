/// @description Called when player hits "F" key

// if player has materials to make traps
if (materialsCount > 0)
{
	// consume 1 material to make trap
	var newTripwire = instance_create_layer(x, y, "CharactersAndInteractables", obj_tripwire);
	materialsCount--;
	
	//play the sound affect 
	audio_play_sound(PlacingTrap_sfx, 1,false);
	
	// set direction of tripwire to match general direction of player
	with (newTripwire)
	{
		// if player is facing in generally vertical direction
		if ((other.image_angle > 45 && other.image_angle <= 135) 
			|| (other.image_angle > 225 && other.image_angle <=315))
		{
			image_angle = 90;
		}
	}
}