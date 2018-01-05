
// Grab section type from sections array
sectionType = argument0;

if (sectionType == 0 ) sectionType = choose(1,2,3);

switch (sectionType){
//	case 0:
//		return ds_list_find_value(sectionsOffPathList,			irandom(ds_list_size(sectionsOffPathList)-1));
//		break;
	case 1:
		return ds_list_find_value(sectionsLeftRightList,		floor(random(ds_list_size(sectionsLeftRightList))));
		break;
	case 2:
		return ds_list_find_value(sectionsLeftTopRightList,		floor(random(ds_list_size(sectionsLeftTopRightList))));
		break;
	case 3:
		return ds_list_find_value(sectionsLeftBottomRightList,	floor(random(ds_list_size(sectionsLeftBottomRightList))));
		break;
	case 4:
		return ds_list_find_value(sectionsEntranceList,			floor(random(ds_list_size(sectionsEntranceList))));
		break;
}