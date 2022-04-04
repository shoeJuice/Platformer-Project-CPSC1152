/// @description Setup Camera

cam = view_camera[0]; // returns camera created by gamemaker
follow = obj_player; // id of what the camera is following - currently the player

//camera_set_view_size(cam, 2000, 1500);

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

xTo = xstart; // Where the camera is moving to
yTo = ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;

//mountainlayer = layer_get_id("Mountains");

