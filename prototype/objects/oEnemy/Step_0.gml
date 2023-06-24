/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 142526C1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if hp <= 0 {$(13_10)instance_destroy()$(13_10)}$(13_10)$(13_10)$(13_10)mp_potential_step_object(oMeson.x, oMeson.y, 2, oGround)"
/// @description Execute Code
if hp <= 0 {
instance_destroy()
}


mp_potential_step_object(oMeson.x, oMeson.y, 2, oGround)