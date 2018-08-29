/// @description Called once per frame

// resets movement input fields
xInput = 0
yInput = 0

// detects horizontal input from user
if (keyboard_check(ord("A")) && !place_meeting(x-16,y,obj_wall))
	xInput = -1
else if (keyboard_check(ord("D")) && !place_meeting(x+16,y,obj_wall))
	xInput = 1

// detects vertical input from user
if (keyboard_check(ord("W")) && !place_meeting(x,y-16,obj_wall))
	yInput = -1
else if (keyboard_check(ord("S")) && !place_meeting(x,y+16,obj_wall))
	yInput = 1
	
// move player according to registered input
if (xInput != 0 && yInput != 0)
{
	x += xInput * sqrt(playerSpeed * playerSpeed * 0.5)
	y += yInput * sqrt(playerSpeed * playerSpeed * 0.5)
}
else if (xInput != 0 || yInput != 0)
{
	x += xInput * playerSpeed
	y += yInput * playerSpeed
}

// rotate to face mouse position
image_angle = point_direction(x, y, mouse_x, mouse_y)

// if player hits reload button, reload weapon
if (keyboard_check(ord("R")))
{
	currAmmo = maxAmmo
}

