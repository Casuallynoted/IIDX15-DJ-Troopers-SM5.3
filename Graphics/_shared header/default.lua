local t = Def.ActorFrame {
	LoadActor("MO_SEL_OUT_FRAME1.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-135;zoomtowidth,SCREEN_WIDTH);
		OnCommand=cmd(addy,240;linear,0.3;addy,-240);
	};
	LoadActor("MO_FRAME1.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP;vertalign,top;zoomtowidth,SCREEN_WIDTH);
		OnCommand=cmd(addy,-240;linear,0.3;addy,240);
	};
	LoadActor("MO_SEL_OUT_FRAME2.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+136;zoomtowidth,SCREEN_WIDTH);
		OnCommand=cmd(addy,-240;linear,0.3;addy,240);
	};
	LoadActor("MO_FRAME2.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM;vertalign,bottom;zoomtowidth,SCREEN_WIDTH);
		OnCommand=cmd(addy,240;linear,0.3;addy,-240);
	};
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#ffffff"));
		OnCommand=cmd(blend,'BlendMode_Add';linear,0.3;diffusealpha,0);
	};
	LoadActor("timer")..{
	};
};

return t;