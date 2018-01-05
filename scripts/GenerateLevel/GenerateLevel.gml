//Genarate Blorder for room. TODO replace oBlock here with new unbreakable wall object
for(i = 0; i < room_width; i+= gridSize){
	instance_create_layer(i,0,"Instances",oBlock);	
	instance_create_layer(i,room_height-gridSize,"Instances",oBlock);	
}

for(i = gridSize; i < room_height - gridSize; i+= gridSize){
	instance_create_layer(0,i,"Instances",oBlock);	
	instance_create_layer(room_width-gridSize, i,"Instances",oBlock);	
}

// Create out new section
var sectionStringData = "";


for (yy = 0; yy < ySections; yy++){
	for (xx = 0; xx < xSections; xx++){
		sectionStringData = LoadRandomSection(sections[xx,yy]);	
		
		CreateSectionsFromString(xx,yy,sectionStringData);
	}
}