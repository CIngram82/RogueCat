
var _currentXSection   = argument0;
var _currentYSection   = argument1;
var _sectionStringData = argument2;
var typeOfObject;

for (c = 1; c < string_length(_sectionStringData) + 1; c++){
	switch (string_char_at(_sectionStringData,c)){
		case "0":
			continue;
		case "1": typeOfObject = oBlock;
			break;
		case "C": typeOfObject = oChunk;
			break;
		case "L": typeOfObject = oLadder;
			break;
		case "P": typeOfObject = oPlayer;
			break;
		case "R": 
			if (choose(true,false)) continue;
			typeOfObject = oRandomBlock;
			break;
	}
	instance_create_layer((_currentXSection * sectionWidth ) + (((c-1) mod sectionTilesX) * gridSize) + gridSize,
						  (_currentYSection * sectionHeight) + (((c-1) div sectionTilesX) * gridSize) + gridSize,
						  "Instances", typeOfObject);
}