/// @description Insert description here

if (!firing){
	firing = true;
	alarm[0] = weaponFireRate;
	instance_create_layer(x + lengthdir_x(43, image_angle),y + lengthdir_y(43,image_angle),"Instances",obj_bullet);
}
