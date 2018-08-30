/// @description Collision with trap materials

// increment player's materials count and remove materials
materialsCount++;
instance_destroy(other);

//play the trap pick up 
audio_play_sound(trapPickup_sfx,1,false);