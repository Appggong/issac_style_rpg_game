/// @description Insert description here
// You can write your code in this editor
// move_keys
if keyboard_check(ord("W")){
	if (keyboard_check(ord("A"))){
	x -= movement_speed_/2;
	y -= movement_speed_/2;
	moving_state_ = moving.forward;
	}
	if keyboard_check(ord("D")){
	x +=movement_speed_/2;
	y -=movement_speed_/2;
	moving_state_ = moving.forward;
	}
	y -=movement_speed_;
	moving_state_ = moving.idle;
}

if keyboard_check(ord("S")){
	if (keyboard_check(ord("A"))){
	x -= movement_speed_/2;
	y += movement_speed_/2;
	moving_state_ = moving.backward;
	}
	if keyboard_check(ord("D")){
	x +=movement_speed_/2;
	y +=movement_speed_/2;
	moving_state_ = moving.backward;
	}
	y +=movement_speed_;
	moving_state_ = moving.idle;
}


if moving_state_ = moving.idle{
	if keyboard_check(ord("A")){
	x -= movement_speed_;;
	}
	if keyboard_check(ord("D")){
	x +=movement_speed_;;
	}
}

///attack state
if mouse_check_button(mb_left){
	if direction_facing_ = direction_facing.north{
	instance_create_layer(x,y-64,"instances",o_hitbox);
	}
}
if mouse_check_button(mb_left){
	if direction_facing_ = direction_facing.south{
	instance_create_layer(x,y+64,"instances",o_hitbox);
	}
}
if mouse_check_button(mb_left){
	if direction_facing_ = direction_facing.east{
	instance_create_layer(x-64,y,"instances",o_hitbox);
	}
}
if mouse_check_button(mb_left){
	if direction_facing_ = direction_facing.west{
	instance_create_layer(x+64,y,"instances",o_hitbox);
	}
}

//compass
if mouse_check_button(mb_left){
	instance_create_layer(x,y,"instances",o_detect_compass);
}

//angles
global.ult_image_angle_ = point_direction(o_player.x, o_player.y, mouse_x, mouse_y);