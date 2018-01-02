/// @description Initialize our Room
randomize();

gridSize = 32;	// Size of your blocks and objects in game (32x32 tile set)

xSections = 4;		// How many rooms along the x axis
ySections = 4;		// How many rooms along the x axis
sections  = [];	// Declare our rooms array

sectionTilesX = 10;	// How many tiles wide out sections are
sectionTilesY = 8;	// How many tiles high out sections are

sectionWidth  = sectionTilesX * gridSize;	// Width  of 1 section in pixles
sectionHeight = sectionTilesY * gridSize;	// Height of 1 section in pixles

room_width  = (sectionWidth  * xSections) + (gridSize * 2);
room_height = (sectionHeight * ySections) + (gridSize * 2);

for (_y = 0; _y < ySections; _y++)	
	for(_x = 0; _x < xSections; _x++) 
		sections[_x,_y] = 0; // Nested loop to fill 2d array of rooms with value 0
	
	
// Create Main Path
CreateMainPath();

for ( _y = 0; _y < ySections; _y++){
	show_debug_message(string(sections[0,_y]) + string(sections[1,_y]) + string(sections[2,_y]) + string(sections[3,_y]));
	}

// Initializing out sections (loading sections as string into memory)


// Create our level


// Clean up memory (De-Initializ our sections)