//-- EXECUTING MOVEMENT SCRIPT
scr_input();
depth = -y;
script_execute(state);

if(room != rBattle) && (!instance_exists(oFade)) {
	script_execute(state);
} else {
	image_index = 0;
}