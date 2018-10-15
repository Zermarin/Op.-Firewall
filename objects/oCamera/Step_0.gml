cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);

switch(mode)//yeet
{
	case cMode.peekMouseFollowing:
		cam_x = lerp(following.x, mouse_x, 0.2) - (view_w/2);
		cam_y = lerp(following.y, mouse_y, 0.2) - (view_h/2);
	break;
	
	
	case cMode.draggingMouse:
		var mx = display_mouse_get_x();
		var my = display_mouse_get_y();
		
		if(mouse_check_button(mb_left))
		{
			cam_x += (mouse_xprevious - mx) * .5;
			cam_y += (mouse_yprevious - my) * .5;
		}
		
		mouse_xprevious = mx;
		mouse_yprevious = my;
	break;
}

if(!bounds)
{
	cam_x = clamp(cam_x, 0, room_width - view_w);
	cam_y = clamp(cam_y, 0, room_height - view_h);
}



camera_set_view_pos(view_camera[0], cam_x, cam_y);
following = oPlayer;
