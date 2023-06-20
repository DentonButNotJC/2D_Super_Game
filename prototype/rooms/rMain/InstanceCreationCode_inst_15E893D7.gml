/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2C8A3733
/// @DnDArgument : "code" "if (instance_exists(oTryPassed))$(13_10)	if (oTryPassed.passed == true)$(13_10)	{$(13_10)		newX = 140;$(13_10)		newY = 335;$(13_10)		newRoom = rEnd;$(13_10)	}"
if (instance_exists(oTryPassed))
	if (oTryPassed.passed == true)
	{
		newX = 140;
		newY = 335;
		newRoom = rEnd;
	}