/// @description init
state = "closed";

xback = x + lengthdir_x(64, image_angle+180);
yback = y + lengthdir_y(64, image_angle+180);

xreturn = x + dcos(image_angle+180)*15.9;
yreturn = y - dsin(image_angle+180)*15.9;

xreturn1 = x + dcos(image_angle)*15.9;
yreturn1 = y - dsin(image_angle)*15.9;

