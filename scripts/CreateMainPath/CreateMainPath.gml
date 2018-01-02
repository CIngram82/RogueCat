// Select Srarting Section
var currentY = 0;				// Initialize as starting Y
var currentX = choose(0,1,2,3);	// Initialize as starting X
var newDirection = 0;			// Keep track of what direction to move


sections[currentX,currentY] = 1;// Room type of exits on left and right

while (currentY < 4)
{
	if (newDirection == 0)	
		newDirection = choose(1,1,2,2,3);
	
	// Move us left if direction = 1
	if (newDirection == 1)
	{
		if (currentX > 0) 
		{
		sections[--currentX, currentY] = 1; 
		newDirection = choose(1,1,1,3);
		} 
		else 
		{ 
			// Cant move left, need to move down. Need to change current room to 2 and next room to 3
			if (currentY < 3)
			{
				sections[currentX,   currentY] = 2;
				sections[currentX, ++currentY] = 3;
				newDirection = 2;
			}
			else 
				++currentY; //exit out of loop
		}
	// Move us right is direction = 2 
	}
	else if (newDirection == 2)
	{
		if (currentX < 3) 
		{
			sections[++currentX, currentY] = 1;
			newDirection = choose(2,2,2,3);
		} 
		else 
		{ 
			// Cant move right, need to move down. Need to change current room to 2 and next room to 3
			if (currentY < 3)
			{
				sections[currentX,   currentY] = 2;
				sections[currentX, ++currentY] = 3;
				newDirection = 1;
			}
			else 
				++currentY; //exit out of loop	
		}
	// Move down if direction is = 3 
	}
	else if (newDirection == 3)
	{
		if (currentY < 3)
		{
			sections[currentX,   currentY] = 2;
			sections[currentX, ++currentY] = 3;
			newDirection = 0;
			
			if (currentX == xSections - 1) 
				newDirection = choose(1,1,3);
			else if (currentX == 0)
				newDirection = choose(2,2,3);
		} 
		else
		{
			++currentY;
		}
	}
}