/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70F2BC7C
/// @DnDArgument : "code" "//camera$(13_10)global.cameraX=0;$(13_10)global.cameraY=0;$(13_10)$(13_10)target=oMeson;$(13_10)$(13_10)global.cameraWidht = 1366;$(13_10)global.cameraHeight = 768;$(13_10)$(13_10)view_enabled = true;$(13_10)view_visible[0] = true;$(13_10)$(13_10)camera_set_view_size(view_visible[0], global.cameraWidht, global.cameraHeight);$(13_10)$(13_10)//display$(13_10)displayScale = 1;$(13_10)displayWidht = global.cameraWidht*displayScale;$(13_10)displayHeight = global.cameraHeight*displayScale;$(13_10)$(13_10)window_set_size(displayWidht, displayHeight);$(13_10)surface_resize(application_surface, displayWidht, displayHeight);$(13_10)$(13_10)//GUI$(13_10)display_set_gui_size(displayWidht, displayHeight);$(13_10)$(13_10)alarm[0] = 1;"
//camera
global.cameraX=0;
global.cameraY=0;

target=oMeson;

global.cameraWidht = 1366;
global.cameraHeight = 768;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_visible[0], global.cameraWidht, global.cameraHeight);

//display
displayScale = 1;
displayWidht = global.cameraWidht*displayScale;
displayHeight = global.cameraHeight*displayScale;

window_set_size(displayWidht, displayHeight);
surface_resize(application_surface, displayWidht, displayHeight);

//GUI
display_set_gui_size(displayWidht, displayHeight);

alarm[0] = 1;