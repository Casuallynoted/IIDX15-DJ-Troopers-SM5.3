local t = Def.ActorFrame {
	LoadActor("T_REMAIN_BAR.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X+308,SCREEN_CENTER_X+412);y,SCREEN_CENTER_Y-153);
		OnCommand=cmd(diffusealpha,0.5);
	};
	LoadActor("T_REMAIN_BAR.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X+308,SCREEN_CENTER_X+412);y,SCREEN_CENTER_Y-153);
		OnCommand=cmd(diffusealpha,1;playcommand,"Animate");
		AnimateCommand=cmd(diffusealpha,1;croptop,.5;linear,0.5;croptop,0;linear,0;croptop,1;linear,0.5;croptop,.5;queuecommand,"Animate");
	};
	LoadActor("T_REMAIN_TEN.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X+309,SCREEN_CENTER_X+413);y,SCREEN_CENTER_Y-225;horizalign,right;vertalign,top;);
		OnCommand=cmd(zoomy,0.1;zoomtowidth,640;diffusealpha,0;linear,0.3;zoomx,10;diffusealpha,1;linear,0.05;zoomy,1;zoomx,1);
	};
	LoadActor("TIME_LINE.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X+269,SCREEN_CENTER_X+359);y,SCREEN_CENTER_Y-139;zoomx,SCREEN_WIDTH/640);
		OnCommand=cmd(cropright,1;sleep,0.5;linear,0.3;cropright,0);
	};
	LoadActor("T_REMAIN.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X+303,SCREEN_CENTER_X+407);y,SCREEN_CENTER_Y-133);
		OnCommand=cmd(addy,-30;diffusealpha,0;sleep,0.3;linear,0.3;addy,30;diffusealpha,1);
	};
};

return t;