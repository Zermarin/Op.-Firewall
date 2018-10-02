//---- CAMERA UPDATING

	var matrix = matrix_build_lookat(0, 0, -100, room_width, room_height, 0, 0, 0, 1);
	camera_set_view_mat(view_camera[0], matrix);
