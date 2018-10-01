/// @desc getting input
rkey = max (keyboard_check(vk_right), keyboard_check(ord("D")), 0 );
lkey = max (keyboard_check(vk_left), keyboard_check(ord("A")), 0 );
dkey = max (keyboard_check(vk_down), keyboard_check(ord("S")), 0 );
ukey = max (keyboard_check(vk_up), keyboard_check(ord("W")), 0 );

xaxis = (rkey - lkey);
yaxis = (dkey - ukey);