/// @desc fadeout (room,fade-colour, fade-speed, x,y)
// @arg room
// @arg fade-colour
// @arg fade-speed
// @arg x
// @arg y

var fade = instance_create_depth(x,y, 0, oFade);

fade.target = argument0; //the room we want to go to
fade.image_alpha = 0; //the colour of the fading
fade.fade_color = argument1;
fade.fade_speed = argument2; //how fast we want to fade
fade.xx = argument3; 
fade.yy = argument4; //the x and y position of the player in the next room