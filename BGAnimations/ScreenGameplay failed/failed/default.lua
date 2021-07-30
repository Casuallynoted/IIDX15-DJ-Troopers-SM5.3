local t = Def.ActorFrame {
	LoadActor("failed.ogg")..{
		StartTransitioningCommand=cmd(play);
	};
	LoadActor("left.png")..{
		InitCommand=cmd(horizalign,left;x,0;y,SCREEN_CENTER_Y);
		OnCommand=cmd(addx,-400;linear,0.4;addx,400;linear,0.1;addx,-5;linear,0.1;addx,5;);
	};
	LoadActor("lock-left.png")..{
		InitCommand=cmd(horizalign,left;x,0;y,SCREEN_CENTER_Y);
		OnCommand=cmd(addx,-400;linear,0.4;addx,400;linear,0.1;addx,-5;linear,0.1;addx,5;sleep,.3;linear,.2;addx,-10);
	};
	LoadActor("right.png")..{
		InitCommand=cmd(horizalign,right;x,640;y,SCREEN_CENTER_Y);
		OnCommand=cmd(addx,400;linear,0.4;addx,-400;linear,0.1;addx,5;linear,0.1;addx,-5;);
	};
	LoadActor("lock-right.png")..{
		InitCommand=cmd(horizalign,right;x,640;y,SCREEN_CENTER_Y);
		OnCommand=cmd(addx,400;linear,0.4;addx,-400;linear,0.1;addx,5;linear,0.1;addx,-5;sleep,.3;linear,.2;addx,10);
	};
	LoadActor("FLARE.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y);
		OnCommand=cmd(zoom,10;zoomy,30;diffusealpha,0;sleep,.1;linear,0.2;diffusealpha,1;linear,0.1;zoomx,0.2;sleep,.1;diffusealpha,0);
	};
	LoadActor("FLARE.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y);
		OnCommand=cmd(zoom,10;zoomy,30;diffusealpha,0;sleep,.1;linear,0.2;diffusealpha,1;linear,0.1;zoomx,0.2;sleep,.1;diffusealpha,0);
	};
	LoadActor("FLARE.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y-56);
		OnCommand=cmd(diffusealpha,0;sleep,.4;diffusealpha,1;sleep,.1;diffusealpha,0);
	};
	LoadActor("SPARK_EF2.png")..{
		InitCommand=cmd(horizalign,right;vertalign,top;blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y-72);
		OnCommand=cmd(rotationz,-10;zoom,0;sleep,.3;linear,.2;zoom,1;diffusealpha,1;linear,0;diffusealpha,0);
	};
	LoadActor("FLARE.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y+56);
		OnCommand=cmd(diffusealpha,0;sleep,.4;diffusealpha,1;sleep,.1;diffusealpha,0);
	};
	LoadActor("SPARK_EF1.png")..{
		InitCommand=cmd(horizalign,right;vertalign,top;blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y+72);
		OnCommand=cmd(;rotationz,50;zoom,0;sleep,.3;linear,.2;zoom,1;diffusealpha,1;linear,0;diffusealpha,0);
	};
	LoadActor("FAILED_REDLINE.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';x,140;y,SCREEN_CENTER_Y);
		OnCommand=cmd(cropleft,1;sleep,.7;linear,.5;cropleft,0);
	};
	LoadActor("FAILED_REDLINE.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';x,493;y,SCREEN_CENTER_Y);
		OnCommand=cmd(cropright,1;sleep,.7;linear,.5;cropright,0);
	};
	LoadActor("FAILED_F.png")..{
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y);
		OnCommand=cmd(addx,-10;diffusealpha,0;sleep,.6;linear,.2;addx,10;diffusealpha,1);
	};
	LoadActor("FAILED_FONT_BOKE.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;sleep,.5;linear,.2;diffusealpha,1;vibrate;effectmagnitude,1,10,1;sleep,0;linear,.4;diffusealpha,0);
	};
	LoadActor("FAILED_BIGF_BOKE.png")..{
		InitCommand=cmd(blend,'BlendMode_Add';x,320;y,SCREEN_CENTER_Y);
		OnCommand=cmd(addx,-100;diffusealpha,0;sleep,.8;linear,.2;addx,10;diffusealpha,.2;linear,2;addx,200);
	};
	Def.Quad{
		InitCommand=cmd(x,320;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#000000"));
		OnCommand=cmd(diffusealpha,0;sleep,2;linear,.3;diffusealpha,1);
	};
};
return t;