local t = Def.ActorFrame {
	LoadActor("INFO.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X-256,SCREEN_CENTER_X-356);y,SCREEN_CENTER_Y-195);
		OnCommand=cmd(;diffusealpha,0;sleep,0.5;diffusealpha,1);
	};
	LoadActor("SETSUMEI.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X-230,SCREEN_CENTER_X-330);y,SCREEN_CENTER_Y-180);
		OnCommand=cmd(cropright,1;sleep,0.6;linear,0.4;cropright,0);
	};
	LoadActor("BUTTON.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X-298,SCREEN_CENTER_X-398);y,SCREEN_CENTER_Y-161);
		OnCommand=cmd(zoom,0;sleep,0.6;linear,0.2;zoom,1);
	};
	LoadActor("B_START.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X-183,SCREEN_CENTER_X-283);y,SCREEN_CENTER_Y-161);
		OnCommand=cmd(cropright,1;sleep,0.6;linear,0.4;cropright,0);
	};
	--LoadActor("B_START_FLASH.png")..{
		--InitCommand=cmd(x,WideScale(SCREEN_CENTER_X-154,SCREEN_CENTER_X-254);y,SCREEN_CENTER_Y-161;diffusealpha,0;sleep,1;diffusealpha,1);
		--OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		--AnimateCommand=cmd(blend,'BlendMode_Add';diffusealpha,0.6;cropright,1;linear,1;cropright,0;linear,0.6;diffusealpha,0;sleep,.4;queuecommand,"Animate");
	--};
};

return t;