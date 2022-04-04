/// @description 

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

var sprite_offset = 10;
for (var i = 0; i < hp; i++)
{
	draw_sprite(spr_heart, 0, i * sprite_get_width(spr_heart) + sprite_offset, gui_height - sprite_offset - sprite_get_height(spr_heart));
}