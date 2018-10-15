enum cMode
{
	peekMouseFollowing,
	draggingMouse,
}

mode = cMode.peekMouseFollowing;
bounds = false;
following = oPlayer;

view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);