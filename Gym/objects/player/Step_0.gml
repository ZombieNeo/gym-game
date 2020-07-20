//get player input
keyleft = keyboard_check(vk_left);
keyright = keyboard_check(vk_right);
keyup = keyboard_check(vk_up);
keydown = keyboard_check(vk_down);
keyinteract = keyboard_check_pressed(vk_enter);

inputdirection = point_direction(0,0,keyright-keyleft,keydown-keyup);
inputmagnitude = (keyright - keyleft != 0)|| (keydown - keyup != 0);

//movement
hspeed = lengthdir_x(inputmagnitude * speedwalk, inputdirection);
vspeed = lengthdir_y(inputmagnitude * speedwalk, inputdirection);


x += hspeed;
y += vspeed;



