/// @description Insert description here
// You can write your code in this editor
draw_text(0,0,x);
draw_text(0,30,y);
draw_text(30,0,mouse_x);
draw_text(30,30,mouse_y);

draw_self();
if direction_facing_ = direction_facing.north{
draw_text(60,60,"North_Yes");
}
if direction_facing_ = direction_facing.south{
draw_text(120,120,"South_Yes");
}
if direction_facing_ = direction_facing.east{
draw_text(180,180,"East_Yes");
}
if direction_facing_ = direction_facing.west{
draw_text(240,240,"West_Yes");
}

