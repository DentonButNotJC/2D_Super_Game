/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4E2B8156
/// @DnDArgument : "code" "//move speed value$(13_10)horizontalSp = 0;$(13_10)verticalSp = 0;$(13_10)gravitySp = 0.7;$(13_10)walkSp = 3;$(13_10)jampSp = 10;$(13_10)jampCounter = 0;$(13_10)$(13_10)//hp$(13_10)hp = 300;$(13_10)hpMax = 200;$(13_10)$(13_10)healthBar_Width = 100;$(13_10)healthBar_Height = 15;$(13_10)$(13_10)//bullet$(13_10)ping=0$(13_10)bullet=7$(13_10)reload=0$(13_10)bullets=21$(13_10)magazinMax=7$(13_10)peremennayaDlyPerezarydki=0$(13_10)$(13_10)$(13_10)//score$(13_10)scoreCorrect = 0;$(13_10)scoreUncorrect = 0;$(13_10)$(13_10)//Fucking crutchs$(13_10)indexSpraitScaleHorizontal=1;$(13_10)indexSpraitScaleVertical=0$(13_10)indexWall=0;$(13_10)$(13_10)$(13_10)///enemy$(13_10)$(13_10)$(13_10)function SpriteChange()$(13_10){$(13_10)	if(horizontalSp > 0)$(13_10)		indexSpraitScaleHorizontal=1;$(13_10)	if(horizontalSp < 0)$(13_10)		indexSpraitScaleHorizontal=-1;$(13_10)	if(verticalSp > 0)$(13_10)		indexSpraitScaleVertical=1;$(13_10)	if(verticalSp < 0)$(13_10)		indexSpraitScaleVertical=-1;$(13_10)$(13_10)	if(place_meeting(x+3, y, oGround))$(13_10)		indexWall=1;$(13_10)	else if(place_meeting(x-3, y, oGround))$(13_10)		indexWall=2;$(13_10)	else$(13_10)		indexWall=0;$(13_10)$(13_10)	if(indexSpraitScaleHorizontal==1 && place_meeting(x, y+2, oGround))$(13_10)	{$(13_10)		sprite_index=sMesonWalk;$(13_10)		image_xscale=1;$(13_10)	}$(13_10)	else if(indexSpraitScaleHorizontal==-1 && place_meeting(x, y+2, oGround))$(13_10)	{$(13_10)		sprite_index=sMesonWalk_1;$(13_10)		image_xscale=-1;$(13_10)	}$(13_10)	$(13_10)	if(horizontalSp==0 && indexSpraitScaleHorizontal==1 && place_meeting(x, y+2, oGround))$(13_10)	{$(13_10)		sprite_index=sMeson;$(13_10)		image_xscale=1;$(13_10)	}$(13_10)	else if(horizontalSp==0 && indexSpraitScaleHorizontal==-1 && place_meeting(x, y+2, oGround))$(13_10)	{$(13_10)		sprite_index=sMeson_1;$(13_10)		image_xscale=-1;$(13_10)	}$(13_10)$(13_10)	if(indexSpraitScaleVertical==-1 && !place_meeting(x, y+2, oGround))$(13_10)	{$(13_10)		if(indexSpraitScaleHorizontal==1)$(13_10)		{$(13_10)			sprite_index=sMesonJump;$(13_10)			image_xscale=1;$(13_10)		}$(13_10)		else if(indexSpraitScaleHorizontal==-1)$(13_10)		{$(13_10)			sprite_index=sMesonJump_1;$(13_10)			image_xscale=-1;$(13_10)		}		$(13_10)	}$(13_10)	else if(indexSpraitScaleVertical==1 && !place_meeting(x, y+2, oGround))$(13_10)	{$(13_10)			if(indexSpraitScaleHorizontal==1)$(13_10)		{$(13_10)			sprite_index=sMesonFall;$(13_10)			image_xscale=1;$(13_10)		}$(13_10)		else if(indexSpraitScaleHorizontal==-1)$(13_10)		{$(13_10)			sprite_index=sMesonFall_1;$(13_10)			image_xscale=-1;$(13_10)		}$(13_10)	}$(13_10)$(13_10)	if(!indexWall==0 && !place_meeting(x, y+2, oGround))$(13_10)	{$(13_10)		if(verticalSp > 0)$(13_10)		{$(13_10)			verticalSp = verticalSp*0.8;$(13_10)		}$(13_10)		if(indexWall==1)$(13_10)		{$(13_10)			sprite_index=sMesonWall_1;$(13_10)			image_xscale=-1;$(13_10)		}$(13_10)		if(indexWall==2)$(13_10)		{$(13_10)			sprite_index=sMesonWall;$(13_10)			image_xscale=1;$(13_10)		}$(13_10)	}$(13_10)}"
//move speed value
horizontalSp = 0;
verticalSp = 0;
gravitySp = 0.7;
walkSp = 3;
jampSp = 10;
jampCounter = 0;

//hp
hp = 300;
hpMax = 200;

healthBar_Width = 100;
healthBar_Height = 15;

//bullet
ping=0
bullet=7
reload=0
bullets=21
magazinMax=7
peremennayaDlyPerezarydki=0


//score
scoreCorrect = 0;
scoreUncorrect = 0;

//Fucking crutchs
indexSpraitScaleHorizontal=1;
indexSpraitScaleVertical=0
indexWall=0;


///enemy


function SpriteChange()
{
	if(horizontalSp > 0)
		indexSpraitScaleHorizontal=1;
	if(horizontalSp < 0)
		indexSpraitScaleHorizontal=-1;
	if(verticalSp > 0)
		indexSpraitScaleVertical=1;
	if(verticalSp < 0)
		indexSpraitScaleVertical=-1;

	if(place_meeting(x+3, y, oGround))
		indexWall=1;
	else if(place_meeting(x-3, y, oGround))
		indexWall=2;
	else
		indexWall=0;

	if(indexSpraitScaleHorizontal==1 && place_meeting(x, y+2, oGround))
	{
		sprite_index=sMesonWalk;
		image_xscale=1;
	}
	else if(indexSpraitScaleHorizontal==-1 && place_meeting(x, y+2, oGround))
	{
		sprite_index=sMesonWalk_1;
		image_xscale=-1;
	}
	
	if(horizontalSp==0 && indexSpraitScaleHorizontal==1 && place_meeting(x, y+2, oGround))
	{
		sprite_index=sMeson;
		image_xscale=1;
	}
	else if(horizontalSp==0 && indexSpraitScaleHorizontal==-1 && place_meeting(x, y+2, oGround))
	{
		sprite_index=sMeson_1;
		image_xscale=-1;
	}

	if(indexSpraitScaleVertical==-1 && !place_meeting(x, y+2, oGround))
	{
		if(indexSpraitScaleHorizontal==1)
		{
			sprite_index=sMesonJump;
			image_xscale=1;
		}
		else if(indexSpraitScaleHorizontal==-1)
		{
			sprite_index=sMesonJump_1;
			image_xscale=-1;
		}		
	}
	else if(indexSpraitScaleVertical==1 && !place_meeting(x, y+2, oGround))
	{
			if(indexSpraitScaleHorizontal==1)
		{
			sprite_index=sMesonFall;
			image_xscale=1;
		}
		else if(indexSpraitScaleHorizontal==-1)
		{
			sprite_index=sMesonFall_1;
			image_xscale=-1;
		}
	}

	if(!indexWall==0 && !place_meeting(x, y+2, oGround))
	{
		if(verticalSp > 0)
		{
			verticalSp = verticalSp*0.8;
		}
		if(indexWall==1)
		{
			sprite_index=sMesonWall_1;
			image_xscale=-1;
		}
		if(indexWall==2)
		{
			sprite_index=sMesonWall;
			image_xscale=1;
		}
	}
}