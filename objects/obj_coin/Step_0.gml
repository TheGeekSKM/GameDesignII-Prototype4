if (obj_pc1.key_int1 == 1) && (distance_to_object(obj_pc1) <= range)
{
	obj_pc1.numberOfCoins += 1;
	instance_destroy();
}