/// @description Called when object is destroyed

// instantiate explosion animation
instance_create_layer(x, y, "VisualEffects", obj_explosion);

// create list of objects to be destroyed in blast
toExplode = ds_list_create();

// with all explodable objects
with (obj_explodableBaseClass)
{
	// if explodable is within set range, add it to list
	if (distance_to_point(other.x, other.y) <= other.explosiveRadius)
		ds_list_add(other.toExplode, id);
}

// if "toExplode" list isn't empty
if (!ds_list_empty(toExplode))
{
	// destroy each explodable object in list
	for (var i = 0; i < ds_list_size(toExplode); i++)
	{
		instance_destroy(ds_list_find_value(toExplode, i));
	}
}
