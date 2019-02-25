/// @description Insert description here
// You can write your code in this editor
enum moving {
	forward,
	backward,
	idle
}

enum direction_facing {
	north,
	south,
	east,
	west,
	noone
}
//create direction detector
instance_create_layer(0,0,"instances",o_detect_left);
instance_create_layer(0,0,"instances",o_detect_top);
instance_create_layer(0,0,"instances",o_detect_bottom);
instance_create_layer(0,0,"instances",o_detect_right);


moving_state_ = moving.idle;
movement_speed_ = 8;
direction_facing_ = direction_facing.noone;

//angles
global.ult_image_angle_ = noone;