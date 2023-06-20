/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B6E4EC5
/// @DnDArgument : "code" "//controlling$(13_10)keyLeft = keyboard_check(ord("A"));$(13_10)keyRight = keyboard_check(ord("D"));$(13_10)keyJamp = keyboard_check_pressed(vk_space);$(13_10)keyAction = keyboard_check(ord("E"));$(13_10)$(13_10)//variable movements$(13_10)var move = keyRight - keyLeft;$(13_10)verticalSp = verticalSp + gravitySp;$(13_10)$(13_10)//move$(13_10)if (place_meeting(x + 2, y + 2, oGround) || place_meeting(x - 2, y + 2, oGround))$(13_10){$(13_10)	horizontalSp = move * walkSp;$(13_10)}$(13_10)$(13_10)//Jamp$(13_10)if ((place_meeting(x - 2, y + 2, oGround) || $(13_10)	place_meeting(x + 2, y + 2, oGround)) && keyJamp && jampCounter <= 1)$(13_10){$(13_10)	if (place_meeting(x, y + 2, oGround))$(13_10)	{$(13_10)	verticalSp -= jampSp;$(13_10)	jampCounter += 1;$(13_10)	}$(13_10)	if (place_meeting(x - 2, y, oGround) && !place_meeting(x, y + 2, oGround))$(13_10)	{$(13_10)		verticalSp = 0;$(13_10)		verticalSp -= jampSp;$(13_10)		if(keyRight)$(13_10)		horizontalSp += jampSp*0.3;$(13_10)		else if(horizontalSp == 0)$(13_10)		horizontalSp += jampSp*0.5;$(13_10)		else$(13_10)		horizontalSp += jampSp*1.5;$(13_10)	}$(13_10)	if (place_meeting(x + 2, y, oGround) && !place_meeting(x, y + 2, oGround))$(13_10)	{$(13_10)		verticalSp = 0;$(13_10)		verticalSp -= jampSp;$(13_10)		if(keyLeft)$(13_10)		horizontalSp += jampSp*-0.3;$(13_10)		else if(horizontalSp == 0)$(13_10)		horizontalSp += jampSp*-0.5;$(13_10)		else$(13_10)		horizontalSp += jampSp*-1.5;$(13_10)	}$(13_10)}$(13_10)$(13_10)//collision y$(13_10)if (place_meeting(x, y + verticalSp, oGround))$(13_10){$(13_10)	couter=0;$(13_10)	while (couter<10 && !place_meeting(x, y + sign(verticalSp), oGround))$(13_10)	{$(13_10)		y = y + sign(verticalSp);$(13_10)		couter+=1;$(13_10)	}$(13_10)	verticalSp = 0;$(13_10)	jampCounter = 0;$(13_10)}$(13_10)$(13_10)y = y + verticalSp;$(13_10)$(13_10)//collision x$(13_10)if (place_meeting(x + horizontalSp + (keyRight - keyLeft)*2, y, oGround))$(13_10){$(13_10)	couter=0;$(13_10)	while (couter<10 && !place_meeting(x + sign(horizontalSp), y, oGround))$(13_10)	{$(13_10)		x = x + sign(horizontalSp);$(13_10)		couter+=1$(13_10)	}$(13_10)	horizontalSp=0;$(13_10)}$(13_10)else$(13_10){	$(13_10)	if(horizontalSp <= move * walkSp)$(13_10)		horizontalSp += keyRight*0.8;$(13_10)	if(horizontalSp >= move * walkSp)$(13_10)		horizontalSp -= keyLeft*0.8;$(13_10)	$(13_10)	x += horizontalSp + (keyRight - keyLeft);$(13_10)}$(13_10)$(13_10)SpriteChange();"
//controlling
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyJamp = keyboard_check_pressed(vk_space);
keyAction = keyboard_check(ord("E"));

//variable movements
var move = keyRight - keyLeft;
verticalSp = verticalSp + gravitySp;

//move
if (place_meeting(x + 2, y + 2, oGround) || place_meeting(x - 2, y + 2, oGround))
{
	horizontalSp = move * walkSp;
}

//Jamp
if ((place_meeting(x - 2, y + 2, oGround) || 
	place_meeting(x + 2, y + 2, oGround)) && keyJamp && jampCounter <= 1)
{
	if (place_meeting(x, y + 2, oGround))
	{
	verticalSp -= jampSp;
	jampCounter += 1;
	}
	if (place_meeting(x - 2, y, oGround) && !place_meeting(x, y + 2, oGround))
	{
		verticalSp = 0;
		verticalSp -= jampSp;
		if(keyRight)
		horizontalSp += jampSp*0.3;
		else if(horizontalSp == 0)
		horizontalSp += jampSp*0.5;
		else
		horizontalSp += jampSp*1.5;
	}
	if (place_meeting(x + 2, y, oGround) && !place_meeting(x, y + 2, oGround))
	{
		verticalSp = 0;
		verticalSp -= jampSp;
		if(keyLeft)
		horizontalSp += jampSp*-0.3;
		else if(horizontalSp == 0)
		horizontalSp += jampSp*-0.5;
		else
		horizontalSp += jampSp*-1.5;
	}
}

//collision y
if (place_meeting(x, y + verticalSp, oGround))
{
	couter=0;
	while (couter<10 && !place_meeting(x, y + sign(verticalSp), oGround))
	{
		y = y + sign(verticalSp);
		couter+=1;
	}
	verticalSp = 0;
	jampCounter = 0;
}

y = y + verticalSp;

//collision x
if (place_meeting(x + horizontalSp + (keyRight - keyLeft)*2, y, oGround))
{
	couter=0;
	while (couter<10 && !place_meeting(x + sign(horizontalSp), y, oGround))
	{
		x = x + sign(horizontalSp);
		couter+=1
	}
	horizontalSp=0;
}
else
{	
	if(horizontalSp <= move * walkSp)
		horizontalSp += keyRight*0.8;
	if(horizontalSp >= move * walkSp)
		horizontalSp -= keyLeft*0.8;
	
	x += horizontalSp + (keyRight - keyLeft);
}

SpriteChange();