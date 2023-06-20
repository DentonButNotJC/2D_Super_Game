/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7EC8E04D
/// @DnDArgument : "code" "//Follow target$(13_10)if(instance_exists(target))$(13_10){$(13_10)	global.cameraX = target.x - (global.cameraWidht/2);$(13_10)	global.cameraY = target.y - (global.cameraHeight/2);$(13_10)	$(13_10)	global.cameraX = clamp(global.cameraX, 0, room_width-global.cameraWidht);$(13_10)	global.cameraY = clamp(global.cameraY, 0, room_height-global.cameraHeight);$(13_10)}$(13_10)camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);$(13_10)$(13_10)layer_x("Background", global.cameraX);$(13_10)layer_y("Background", global.cameraY);"
//Follow target
if(instance_exists(target))
{
	global.cameraX = target.x - (global.cameraWidht/2);
	global.cameraY = target.y - (global.cameraHeight/2);
	
	global.cameraX = clamp(global.cameraX, 0, room_width-global.cameraWidht);
	global.cameraY = clamp(global.cameraY, 0, room_height-global.cameraHeight);
}
camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

layer_x("Background", global.cameraX);
layer_y("Background", global.cameraY);