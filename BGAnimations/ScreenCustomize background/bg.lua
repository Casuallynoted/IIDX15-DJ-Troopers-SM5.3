local t = Def.ActorFrame {
	LoadActor("RED_LIGHT.png")..{
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y;blend,'BlendMode_Add');
		OnCommand=cmd(diffuseshift;effectperiod,2;effectcolor1,1,1,1,1;effectcolor2,1,1,1,0.2;);
	};
	LoadActor("BG_MODE.png")..{
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;addx,-15;addy,-15;linear,0.5;addx,15;addy,15;diffusealpha,0.8);
	};
	LoadActor("UP_PARTS.png")..{
		InitCommand=cmd(x,299;y,126;blend,'BlendMode_Add');
		OnCommand=cmd(addy,400;sleep,0.1;linear,0.5;addy,-350;linear,0.15;addy,-50;linear,0.4;diffusealpha,0);
	};
	LoadActor("MOBG_FLASH1.png")..{
		InitCommand=cmd(x,40;y,200;blend,'BlendMode_Add');
		OnCommand=cmd(diffusealpha,0;sleep,0.5;diffusealpha,0.7;sleep,0.1;diffusealpha,0);
	};
	LoadActor("MOBG_FLASH2.png")..{
		InitCommand=cmd(x,319;y,161;blend,'BlendMode_Add');
		OnCommand=cmd(diffusealpha,0;sleep,0.55;diffusealpha,0.7;sleep,0.1;diffusealpha,0);
	};
	LoadActor("MOBG_FLASH3.png")..{
		InitCommand=cmd(x,343;y,284;blend,'BlendMode_Add');
		OnCommand=cmd(diffusealpha,0;sleep,0.6;diffusealpha,0.7;sleep,0.1;diffusealpha,0);
	};
};
return t;