/// @description Auto Save

// Overwrite old Save

if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

// Create new save

var file;
file = file_text_open_write(SAVEFILE); // returns file id
file_text_write_real(file, room); // everything has a real number associated with them
file_text_close(file);

