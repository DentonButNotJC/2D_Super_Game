/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0C739266
/// @DnDArgument : "code" "if (place_meeting(x, y, oMeson) && oMeson.keyAction)$(13_10)	vis_text = true;$(13_10)	$(13_10)if (!place_meeting(x, y, oMeson))$(13_10)vis_text = false;"
if (place_meeting(x, y, oMeson) && oMeson.keyAction)
	vis_text = true;
	
if (!place_meeting(x, y, oMeson))
vis_text = false;