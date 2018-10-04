/// @desc Initialize
spd = 4;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;

state = move_state;

// sprite variables

face = 0;

//macros in gamemaker are the same as constants, it cannot be changed
#macro RIGHT sPlayer_R;
//this is so we dont need to type out sPlayer_whatever so we make a macro instead
#macro DOWNRIGHT sPlayer_DR;
#macro DOWN sPlayer_D;
#macro DOWNLEFT sPlayer_DL;
#macro LEFT sPlayer_L;
#macro UPLEFT sPlayer_UL;
#macro UP sPlayer_U;
#macro UPRIGHT sPlayer_UR;

