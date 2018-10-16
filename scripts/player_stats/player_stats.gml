/// Player stats

globalvar p_level;
p_level = 1;
globalvar p_health;
p_health = 20;
globalvar p_maxhealth;
p_maxhealth = 20;
globalvar p_attack;
p_attack = 5;
globalvar p_speed;
p_speed = 10;
globalvar p_exp;
p_exp = 0;
globalvar p_maxexp;
p_maxexp = 20;
// we use global variables so that the player and
// the battle object will need these variables + saves us from adding useless code