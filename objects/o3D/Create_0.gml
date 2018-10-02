//---- 3D INITIALIZATION

	gpu_set_ztestenable(true);
	gpu_set_zwriteenable(true);

//---- 3D CAMERA INITIALIZATION

	view_enabled = true;
	view_set_visible(0, true);
	
	camera = camera_create();
	projectMat = matrix_build_projection_perspective(45, view_wport[0]/view_hport[0],1, 32000);
	
	camera_set_proj_mat(camera, projectMat);
	
	view_set_camera(0, camera);
	camera_set_update_script(camera, camera_update);