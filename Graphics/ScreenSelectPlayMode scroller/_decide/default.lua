local t = Def.ActorFrame {
	LoadActor("_mode decide")..{
		OnCommand=cmd(visible,false;pause);
		OffFocusedCommand=cmd(visible,true;play);
	};
	LoadActor("DECIDE_GLOW.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,356);
		OnCommand=cmd(visible,false);
		OffFocusedCommand=cmd(visible,true;blend,'BlendMode_Add';addx,-200;diffusealpha,0;sleep,.8;linear,.25;addx,200;diffusealpha,1;linear,.25;addx,200;diffusealpha,0);
	};
	LoadActor("DECIDE_GLOW.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(visible,false);
		OffFocusedCommand=cmd(visible,true;blend,'BlendMode_Add';zoom,1.2;linear,0.4;zoom,0.8;diffusealpha,0);
	};
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#ffffff"));
		OnCommand=cmd(visible,false);
		OffFocusedCommand=cmd(visible,true;diffuse,0,0,0,1;diffusealpha,0;sleep,2.4;linear,.3;diffusealpha,1);
	};
};
return t;