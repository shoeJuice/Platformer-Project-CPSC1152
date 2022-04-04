/// @description Add Flash shader

draw_self();

if(flash > 0)
{
	flash--;
	
	shader_set(shd_white);
	draw_self();
	shader_reset();
}

var health_height =	10;

draw_healthbar(x, y + sprite_height + 10, x + sprite_width, y + sprite_height + 10 + health_height,100 * hp/max_hp, c_black, c_red, c_lime, 0, true, true);