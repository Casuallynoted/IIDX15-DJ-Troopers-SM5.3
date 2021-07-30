local t = Def.ActorFrame {
	LoadActor("out.ogg")..{
		OffCommand=cmd(play);
	};
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#000000"));
		OnCommand=cmd(diffusealpha,1);
	};
	-- [Layer1]
	LoadActor("PASSAGE.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT);
		OnCommand=cmd(diffusealpha,0;sleep,0.4;linear,1.6;diffusealpha,1);
	};
	-- [Layer5]
	LoadActor("left.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X-320,SCREEN_CENTER_X-426);y,SCREEN_CENTER_Y;horizalign,left;zoomx,SCREEN_WIDTH/640);
		OnCommand=cmd(sleep,0.2;linear,0.05;addy,-2;sleep,0.1;linear,0.05;addy,2;sleep,0.1;linear,3.4;addx,-320);
	};
	-- [Layer6]
	LoadActor("right.png")..{
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X+320,SCREEN_CENTER_X+426);y,SCREEN_CENTER_Y;horizalign,right;zoomx,SCREEN_WIDTH/640);
		OnCommand=cmd(sleep,0.2;;linear,0.05;addy,2;linear,0.05;addy,2;linear,0.05;addy,-2;linear,0.05;addy,-2;sleep,0.1;linear,3.4;addx,320);
	};
	-- [Layer9]
	LoadActor("OPERATION.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-13);
		OnCommand=cmd(blend,'BlendMode_Add';cropright,1;sleep,0.1;linear,0.3;cropright,0;sleep,1;linear,0.3;y,240;diffusealpha,0);
	};
	-- [Layer10]
	LoadActor("TROOPERS.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+6);
		OnCommand=cmd(blend,'BlendMode_Add';cropright,1;sleep,0.2;linear,0.3;cropright,0;sleep,.9;linear,0.3;y,240;diffusealpha,0);
	};
	-- [Layer11]
	LoadActor("STAND_BY.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+68);
		OnCommand=cmd(blend,'BlendMode_Add';diffusealpha,0;sleep,0.2;diffusealpha,1;diffuseblink;effectperiod,0.3;effectcolor1,1,1,1,1;effectcolor2,1,1,1,0;sleep,1.4;diffusealpha,0);
	};
	-- [Layer12]
	LoadActor("STAND_BY.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+68);
		OnCommand=cmd(blend,'BlendMode_Add';diffusealpha,0;sleep,1.6;diffusealpha,1;);
	};
	-- [Layer13]
	LoadActor("GOOD_LUCK.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';;cropright,1;sleep,1.5;linear,0.3;cropright,0;);
	};
	LoadActor("SITE.png")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,'BlendMode_Add');
		OnCommand=cmd(zoom,0.95;diffusealpha,0;sleep,0.2;linear,0.1;zoom,1;diffusealpha,0.5);
	};
	-- [Layer20]
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#ffffff"));
		OnCommand=cmd(linear,0.2;diffusealpha,0);
	};
	-- [Layer21]
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#000000"));
		OnCommand=cmd(diffusealpha,0;sleep,2.4;linear,0.3;diffusealpha,1);
	};
};
return t