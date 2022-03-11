// on step



// only enable input if con_tar matches my id
if (obj_gui.con_tar==my_id)
	{
	key_right = keyboard_check(ord("D"));
	key_left = -keyboard_check(ord("A"));
	key_jump = keyboard_check_pressed(ord("J"));
	key_int1 = keyboard_check_pressed(ord("K"));
	}
	else
	{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
	}


move = key_left + key_right;
hsp = move * movespeed;

//set facing


if (move>0)
	{
	image_xscale=1;
	}
else if (move<0)
	{
	image_xscale=-1;
	}



if (vsp<maxfall)
{
	vsp += grav;
}

if (place_meeting(x,y+1,obj_wall))
	{
	vsp=key_jump * -jumpspeed;
	}
	
// vert collision
if (place_meeting(x,y+vsp,obj_wall))
	{
		while (!place_meeting(x,y+sign(vsp),obj_wall))
			{
			y += sign(vsp);
			}
		vsp = 0;
	}
y += vsp;

//horizontal collision
if (place_meeting(x+hsp,y,obj_wall))
	{
		while (!place_meeting(x+sign(hsp),y,obj_wall))
		{
		x += sign(hsp);
		}
		hsp = 0;
	}

x+=hsp;

//end step

