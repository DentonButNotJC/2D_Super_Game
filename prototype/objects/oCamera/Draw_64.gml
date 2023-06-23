/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 71D0AB8B
/// @DnDArgument : "code" "draw_sprite(sHealthBar_bg, 0, 10, 10);$(13_10)draw_sprite_stretched(sHealthBar, 0, 10, 10, min((oMeson.hp/oMeson.hpMax) * oMeson.healthBar_Width, oMeson.healthBar_Width), oMeson.healthBar_Height);$(13_10)draw_sprite(sHealthBarBorder, 0, 10, 10);$(13_10)$(13_10)draw_text(50, 50, string(oMeson.bullet) +" / "+  string(oMeson.bullets));"
draw_sprite(sHealthBar_bg, 0, 10, 10);
draw_sprite_stretched(sHealthBar, 0, 10, 10, min((oMeson.hp/oMeson.hpMax) * oMeson.healthBar_Width, oMeson.healthBar_Width), oMeson.healthBar_Height);
draw_sprite(sHealthBarBorder, 0, 10, 10);

draw_text(50, 50, string(oMeson.bullet) +" / "+  string(oMeson.bullets));