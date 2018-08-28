/// @description Called once per frame

// if pirate is active
if (isActive)
{
	// set their direction to face player
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	
	// if weapon has ammo in it and fire cooldown has ended
	if (currAmmo > 0 && shotCooldown < 1)
	{
		// fire bullet in direction pirate faces
		var newBullet = instance_create_layer(x, y, "Projectiles", obj_enemyBullet);
		with (newBullet)
		{
			direction = other.direction + random_range(-15, 15);
			speed = other.bulletSpeed;
			image_angle = direction;
		}
		
		// begin between-shoot cooldown and subtract from ammo
		shotCooldown = framesBetweenShots;
		currAmmo--;
	}
	
	// decrement shot cooldown
	if (shotCooldown > 0)
		shotCooldown -= 1;
		
	// if pirate lacks ammo, start reload timer
	if (currAmmo < 1 && alarm[0] < 1)
		alarm[0] = reloadSpeed;
}

// rotate sprite to face object's direction
image_angle = direction;