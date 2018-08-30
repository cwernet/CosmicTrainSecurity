/// @description Called when player's bullet collides with window

// create list of objects to be sucked out window
toSuck = ds_list_create();

// with all explodable (in this case, suckable) objects
with (obj_explodableBaseClass)
{
	// if object is within suction radius, add it to list
	if (distance_to_point(other.x, other.y) <= other.suctionRadius)
		ds_list_add(other.toSuck, id);
}

// if list isn't empty
if (!ds_list_empty(toSuck))
{
	// bring each item to window
	for (var i = 0; i < ds_list_size(toSuck); i++)
	{
		with (ds_list_find_value(toSuck, i))
		{
			direction = point_direction(x, y, other.x, other.y);
			speed = other.suckSpeed;
		}
	}
}