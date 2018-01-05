/// @description Insert description here
// You can write your code in this editor

creator = oLevelCreator;

chunkString = ds_list_find_value(creator.chunks, floor(random(ds_list_size(creator.chunks))));

var typeOfObject;

for(c = 1; c < string_length(chunkString) + 1; c++){
	switch(string_char_at(chunkString, c)){
		case "0":
			continue;
		case "1":
			typeOfObject = oBlock;
			break;
		case "L":
			typeOfObject = oLadder;
			break;
		case "R":
			typeOfObject = oRandomBlock;
			break;
	}
	instance_create_layer(x + ((c-1) mod 3) * creator.gridSize,
						  y + ((c-1) div 3) * creator.gridSize, "Instances", typeOfObject);
}
instance_destroy();