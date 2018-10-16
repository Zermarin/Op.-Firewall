// Get direction
	dir = point_direction(0, 0, xaxis, yaxis);

// Length calculation
	if (xaxis == 0) && (yaxis == 0) {
		len = 0 ;
	} else {
		len = spd;
	}
// Speed variables
	hspd = lengthdir_x(len, dir);
	vspd = lengthdir_y(len, dir);
	

// Horizontal

	if (place_meeting(x+hspd, y, oCollision)) {
		while (!place_meeting(x+sign(hspd), y, oCollision)) {
			x += sign(hspd);
	}
		hspd = 0;
}
	x += hspd;
	
	//Vertical\
	if (place_meeting(x, y + vspd, oCollision)) {
		while (!place_meeting(x, y + sign(vspd), oCollision)) {
			y += sign(vspd);
	}
		vspd = 0;
}
	y += vspd;