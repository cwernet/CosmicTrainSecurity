/// @description Called once per frame

// decrement counter
counter--;

// destroy explosion if counter has completed
if (counter < 0)
	instance_destroy(id);
