local t = Def.ActorFrame{
	LoadActor("warning.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
		OnCommand=cmd(diffusealpha,1;sleep,3.2;linear,0.6;diffusealpha,0);
	};
	LoadActor("konami")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
		OnCommand=cmd(diffusealpha,0;sleep,4.2;decelerate,0.6;diffusealpha,1;sleep,5.2;accelerate,0.6;diffusealpha,0);
	};
	LoadActor("bemani")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
		OnCommand=cmd(diffusealpha,0;sleep,10.6;decelerate,0.6;diffusealpha,1;sleep,5.2;accelerate,0.6;diffusealpha,0);
	};
};

return t;