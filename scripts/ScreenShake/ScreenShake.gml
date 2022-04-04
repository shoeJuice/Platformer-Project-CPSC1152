/// @desc ScreenShake(Magnitude,Frames)
/// @arg Magnitude sets the streength of the shake
/// @arg Frames sets the length of shake in frames (60 = 1 second at 60fps)

with (obj_camera)
{
	if (argument0 > shake_remain) // arg0 is magnitude
	{
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
		
	}
	
}
