/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 273CEE68
/// @DnDArgument : "code" "if(place_meeting(x, y, oMeson) && oMeson.keyAction)$(13_10)	{$(13_10)		oTryPassed.passed = false;$(13_10)		instance_destroy();$(13_10)	}"
if(place_meeting(x, y, oMeson) && oMeson.keyAction)
	{
		oTryPassed.passed = false;
		instance_destroy();
	}