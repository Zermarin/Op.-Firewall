//----INPUT UPDATES

input_left    = keyboard_check(ord("A"));
input_right    = keyboard_check(ord("D"));
input_up    = keyboard_check(ord("W"));
input_down    = keyboard_check(ord("S"));

//----RESET MOVEMENT VARIABLES

moveX = 0;
moveY = 0;

//----INTENDED MOVEMENT
moveY = (input_down - input_up) * spd;

if (moveY == 0)
{ moveX = (input_right - input_left) * spd; }

//---- COLLISION CHECKS

// Horizontal

if (place_meeting(x + moveX, y, oCollision))
{
    repeat (abs(moveX))
    {    
        if (!place_meeting(x + sign(moveX), y, oCollision)) { x += sign(moveX); }
        else { break; }
    }
    moveX = 0;
}            
    
// Vertical

if (place_meeting(x, y + moveY, oCollision))
{
    repeat (abs(moveY))
    {    
        if (!place_meeting(x, y + sign(moveY), oCollision)) { y += sign(moveY); }
        else { break; }
    }
    moveY = 0;
}