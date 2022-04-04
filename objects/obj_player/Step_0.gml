/// @description Movement

if (hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D")); // Check if key is currently held down
	key_jump = keyboard_check_pressed(vk_up) || keyboard_check(ord("W")); // Check if up got pressed
} 
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

move = key_right - key_left;

hsp = move * walksp;
vsp += grv;

if(place_meeting(x, y+1, obj_wall) && key_jump) { // check if on floor
		
		vsp = -10;
}

if(place_meeting(x + hsp, y, obj_wall)) { // check for collision between this obj and obj_wall
	
	while(!place_meeting(x+sign(hsp), y, obj_wall)) { // sign(hsp) returns 1 if hsp is + and -1 if hsp is -1
		x += sign(hsp);
	}
	
	hsp = 0;
	
}

x += hsp;

if(place_meeting(x, y + vsp, obj_wall)) { // check for collision between this obj and obj_wall
	
	while(!place_meeting(x, y+sign(vsp), obj_wall)) { // sign(hsp) returns 1 if hsp is + and -1 if hsp is -1
		y += sign(vsp);
	}
	
	vsp = 0;
	
}

y += vsp;

if (move != 0) 
{
	previous_dir = move;	
}

if (hp <= 0)
{
	instance_destroy(id, true);	
	effect_create_above(ef_smokeup, x, y, 0.5, c_green);
	room_restart()
}

// Animation

if (!place_meeting(x, y+1, obj_wall)) 
{
	sprite_index = spr_player_A; // Tells object what sprite to use
	image_speed = 0; // How fast the animation should happen
	
	if (sign(vsp) > 0) image_index = 1; else image_index = 0; // Inline if statement, checking up and down
	
}	else { // Touching the floor
	image_speed = 1;
	
	if (hsp == 0) sprite_index = spr_player; else sprite_index = spr_player_R;

	
}

if (hsp != 0) image_xscale = sign(hsp); // Sets sprite backwards when moving left




