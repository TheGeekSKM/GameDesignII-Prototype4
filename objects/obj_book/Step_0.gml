if (obj_pc2.key_int1 == 1) && (distance_to_object(obj_pc2) <= range)
{
	obj_pc2.numberOfBooks += 1;
	instance_destroy();
}