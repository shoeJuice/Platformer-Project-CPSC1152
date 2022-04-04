/// @description Animates One Frame Behind PLayer

x = obj_player.x;
y = obj_player.y + 10;

image_angle = point_direction(x, y, mouse_x, mouse_y);

firingdelay --;

recoil = max(0, recoil - 1); // decreases recoil to 0

if (mouse_check_button(mb_left) && firingdelay < 0)
{
	firingdelay = 20; //  Setting firing delay -- TODO change to an alarm
	recoil = 4;
	ScreenShake(2, 10);
	
	with (instance_create_layer(x, y, "Bullets", obj_rocket)) // Create the obj and provide its ID to with
	{
		//speed = 25;
		direction = other.image_angle + random_range(-3, 3); // other = obj_gun
		image_angle = direction;
	}
}

x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);

if (image_angle > 90 && image_angle < 270) image_yscale = -1; else image_yscale = 1;