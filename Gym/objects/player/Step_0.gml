//get player input
keyleft = keyboard_check(vk_left) and place_free(x - collisionspeed, y);
keyright = keyboard_check(vk_right) and place_free(x + collisionspeed, y);
keyup = keyboard_check(vk_up) and place_free(x,y - collisionspeed);
keydown = keyboard_check(vk_down) and place_free(x,y + collisionspeed);
keyinteract = keyboard_check_pressed(vk_enter);

inputdirection = point_direction(0,0,keyright-keyleft,keydown-keyup);
inputmagnitude = (keyright - keyleft != 0)|| (keydown - keyup != 0);

//movement
hspeed = lengthdir_x(inputmagnitude * speedwalk, inputdirection);
vspeed = lengthdir_y(inputmagnitude * speedwalk, inputdirection);


x += hspeed;
y += vspeed;



