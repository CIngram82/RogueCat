gridSize = 32;

xTiles = room_width  div gridSize;
yTiles = room_height div gridSize;

var levelData = "";

for (yy = 0; yy < yTiles; yy++)
	for(xx = 0; xx < xTiles; xx++){
		inst = instance_position(xx * gridSize, yy * gridSize,all);
			if (inst != noone) inst = inst.object_index;
			
			switch (inst){
				case noone:  levelData += "0";
					break;
				case oBlock: levelData += "1";
					break;
			}
	}
saveDir = get_save_filename("*.txt", room_get_name(room) + ".txt");
file = file_text_open_write(saveDir);
file_text_write_string(file,levelData);
file_text_close(file);