// Initialize out list for the different template types used
sectionsLeftBottomRightList = ds_list_create();
sectionsLeftTopRightList	= ds_list_create();
sectionsLeftRightList		= ds_list_create();
sectionsOffPathList			= ds_list_create();
sectionsEntranceList		= ds_list_create();

// Store the String representations for our templates in our new lists.
InitializeLBRSections();
InitializeLTRSections();
InitializeLRSections();
InitializeOffPathSections();
InitializeEntranceSections();