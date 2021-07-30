local t = Def.ActorFrame{
	LoadActor("_config.lua")..{
		InitCommand=cmd(zoomx,SCREEN_WIDTH/640);
	};
	LoadActor(THEME:GetPathG("","_shared header"))..{};
	
	LoadActor("CUSTOM.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X-245,SCREEN_CENTER_X-345);y,SCREEN_CENTER_Y-214);
		OnCommand=cmd(addx,-10;diffusealpha,0;sleep,0.5;linear,0.3;addx,10;diffusealpha,1);
	};
};
return t;