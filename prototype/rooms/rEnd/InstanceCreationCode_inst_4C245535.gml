/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3A3840FD
/// @DnDArgument : "code" "if(instance_exists(oMeson))$(13_10)	if(oMeson.scoreCorrect == 2)$(13_10)		passed = true;"
if(instance_exists(oMeson))
	if(oMeson.scoreCorrect == 2)
		passed = true;