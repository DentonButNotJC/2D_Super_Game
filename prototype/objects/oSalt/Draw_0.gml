/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 34399E6F
/// @DnDArgument : "code" "draw_self();$(13_10)$(13_10)if (vis_text)$(13_10){$(13_10)	draw_set_halign(fa_center);$(13_10)	draw_set_valign(fa_middle);$(13_10)	$(13_10)	draw_set_font(fTimesNewRoman);$(13_10)	draw_text_color(x, y - 236, sText, sColorOne, sColorOne, sColorTwo, sColorTwo, 1);$(13_10)}"
draw_self();

if (vis_text)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_font(fTimesNewRoman);
	draw_text_color(x, y - 236, sText, sColorOne, sColorOne, sColorTwo, sColorTwo, 1);
}