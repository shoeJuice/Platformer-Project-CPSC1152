/// @description Check for Collision

vsp += grv;

if(place_meeting(x + hsp, y, obj_wall)) { // check for collision between this obj and obj_wall
	
	while(!place_meeting(x+sign(hsp), y, obj_wall)) { // sign(hsp) returns 1 if hsp is + and -1 if hsp is -1
		x += sign(hsp);
	}
	
	hsp = hsp * -1;
	
}

if(place_meeting(x, y + vsp, obj_wall)) { // check for collision between this obj and obj_wall
	
	while(!place_meeting(x, y+sign(vsp), obj_wall)) { // sign(hsp) returns 1 if hsp is + and -1 if hsp is -1
		y += sign(vsp);
	}
	
	vsp = 0;
	
}

x += hsp;
y += vsp;

// If want to animate, put the same stuff that the player has in here

if (hsp != 0) image_xscale = size;
image_yscale = size;



