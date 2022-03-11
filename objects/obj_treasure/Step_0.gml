if (obj_pc3.key_int1 == 1) && (distance_to_object(obj_pc3) <= range)
{
	obj_pc3.numberOfTreasure += 1;
	instance_destroy();
}