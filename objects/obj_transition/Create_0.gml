/// @description Size, Variables,and Mode Setup

w = display_get_gui_width(); // Basically size of the screen
h = display_get_gui_height();

h_half = h / 2;

enum TRANS_MODE // enum sets a set of ordered numbers into readable words -> good for when numbers don't change
{ 
	OFF, 
	NEXT, 
	GOTO, 
	RESTART, 
	INTRO 
}

mode = TRANS_MODE.INTRO;
percent = 1; // How much of screen is covered in black
target = room;

