local t = Def.ActorFrame{
	LoadActor("BG_FRAME_TOP")..{
	InitCommand=cmd(vertalign,top;x,320;y,SCREEN_TOP);
	OnCommand=cmd(addy,-60;diffusealpha,0;linear,.25;addy,60;diffusealpha,1);
	};
	LoadActor("BG_FRAME_DOWN")..{
	InitCommand=cmd(vertalign,bottom;x,320;y,SCREEN_BOTTOM);
	OnCommand=cmd(addy,60;diffusealpha,0;linear,.25;addy,-60;diffusealpha,1);
	};
	LoadActor("grade frame p1")..{
	InitCommand=cmd(horizalign,left;vertalign,top;x,-3;y,18);
	OnCommand=cmd(rotationz,-90;diffusealpha,0;linear,.25;rotationz,0;diffusealpha,0.9);
	};
	LoadActor("grade frame p2")..{
	InitCommand=cmd(horizalign,right;vertalign,top;x,643;y,18);
	OnCommand=cmd(rotationz,90;diffusealpha,0;linear,.25;rotationz,0;diffusealpha,0.9);
	};
	LoadActor("GRA_ITA.png")..{
	InitCommand=cmd(x,137;y,111;diffusealpha,.5;zoomy,0;sleep,.3;linear,.25;zoomy,1);
	OnCommand=cmd();
	};
	LoadActor("GRA_ITA.png")..{
	InitCommand=cmd(x,503;y,111;diffusealpha,.5;zoomy,0;sleep,.3;linear,.25;zoomy,1);
	OnCommand=cmd();
	};
	LoadActor("p1 score report.png")..{
	InitCommand=cmd(x,108;y,15;addx,-20;diffusealpha,0;linear,0.2;addx,20;diffusealpha,1);
	};
	LoadActor("p2 score report.png")..{
	InitCommand=cmd(x,532;y,16;addx,20;diffusealpha,0;linear,0.2;addx,-20;diffusealpha,1);
	};
	LoadActor("difficulty.png")..{
	InitCommand=cmd(visible,GAMESTATE:IsPlayerEnabled(PLAYER_1);x,70;y,206;addx,-20;diffusealpha,0;linear,0.2;addx,20;diffusealpha,1);
	};
	LoadActor("difficulty.png")..{
	InitCommand=cmd(visible,GAMESTATE:IsPlayerEnabled(PLAYER_2);x,572;y,206;addx,20;diffusealpha,0;linear,0.2;addx,-20;diffusealpha,1);
	};
	LoadActor("difficulty_icon.lua")..{
	};
};

return t;