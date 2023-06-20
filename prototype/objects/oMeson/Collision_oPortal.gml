/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 65A2DF5B
/// @DnDArgument : "code" "if (room_exists(other.newRoom) && keyAction)$(13_10){$(13_10)	if(other.Uncorrect && !oTryPassed.passed)$(13_10)	{$(13_10)		scoreUncorrect+=1;$(13_10)		oTryPassed.passed = true;$(13_10)	}$(13_10)	else if(other.Correct && !oTryPassed.passed)$(13_10)	{$(13_10)		scoreCorrect+=1;$(13_10)		oTryPassed.passed = true;$(13_10)	}$(13_10)	$(13_10)	room_goto(other.newRoom)$(13_10)	x = other.newX;$(13_10)	y = other.newY;$(13_10)}$(13_10)else if (other.exitDoor == 1 && keyAction)$(13_10){$(13_10)	game_end();$(13_10)}"
if (room_exists(other.newRoom) && keyAction)
{
	if(other.Uncorrect && !oTryPassed.passed)
	{
		scoreUncorrect+=1;
		oTryPassed.passed = true;
	}
	else if(other.Correct && !oTryPassed.passed)
	{
		scoreCorrect+=1;
		oTryPassed.passed = true;
	}
	
	room_goto(other.newRoom)
	x = other.newX;
	y = other.newY;
}
else if (other.exitDoor == 1 && keyAction)
{
	game_end();
}