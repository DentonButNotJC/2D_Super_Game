/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08458C3C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if ping=0 and reload = 0 and bullet > 0 {$(13_10)instance_create_depth(x + 16, y - 32, 0, oBullet)$(13_10)bullet-=1$(13_10)ping=1$(13_10)alarm[0]=15$(13_10)$(13_10)$(13_10)$(13_10)   $(13_10)}"
/// @description Execute Code
if ping=0 and reload = 0 and bullet > 0 {
instance_create_depth(x + 16, y - 32, 0, oBullet)
bullet-=1
ping=1
alarm[0]=15



   
}