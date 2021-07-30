local t = Def.ActorFrame{
	Def.Actor{
		OnCommand=cmd(sleep,3.5);
	};
	LoadActor(THEME:GetPathS("","_caution.ogg"))..{
		OffCommand=cmd(play);
		OnCommand=cmd(stop);
	};
	-- [Layer1]
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#000000"));
		OnCommand=cmd(diffusealpha,1);
	};
	-- [Layer5]
	LoadActor("TITLE_BG1")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+10;texcoordvelocity,.2,0);
		OnCommand=cmd(zoom,2;linear,0.35;zoom,1;linear,0.1;zoomx,100;zoomy,0.02;sleep,0.4;zoomy,0.2;sleep,0.2;zoomy,0.1);
	};
	-- [Layer6]
	LoadActor("TITLE_BG2")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+10;texcoordvelocity,-.2,0);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,2;linear,0.35;zoom,1;linear,0.1;zoomx,100;zoomy,0.02;sleep,0.6;zoomy,0.2;sleep,0.2;zoomy,0.1);
	};
	-- [Layer7]
	LoadActor("TITLE_BG4")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+10;texcoordvelocity,-.2,0);
		OnCommand=cmd(blend,'BlendMode_Add';;zoom,2;linear,0.35;zoom,1;linear,0.1;zoomx,100;zoomy,0.02);
	};
	-- [Layer8]
	LoadActor("TITLE_BG3")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+10;texcoordvelocity,.22,0);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,2;linear,0.35;zoom,1;linear,0.1;zoomx,100;zoomy,0.02;;y,250;);
	};
	-- [Layer9]
	LoadActor("TITLE_BG1")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;texcoordvelocity,.2,0);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,2;linear,0.35;zoom,1;linear,0.1;zoomx,100;zoomy,0.05;diffusealpha,0);
	};
	-- [Layer15]
	LoadActor("SITE")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.5;linear,0.3;zoom,1;linear,0.2;zoom,1.6;diffusealpha,0);
	};
	-- [Layer16]
	LoadActor("SITE")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
		OnCommand=cmd(blend,'BlendMode_Add';zoom,0.5;linear,0.3;zoom,1;linear,0.2;zoom,1.6;diffusealpha,0);
	};
	-- [Layer20]
	LoadActor("START_TXT")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-3);
		OnCommand=cmd(blend,'BlendMode_Add';addx,-20;diffusealpha,0;sleep,0.7;linear,0.2;addx,20;diffusealpha,1);
	};
	-- [Layer21]
	LoadActor("FONT_YAJI")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+23);
		OnCommand=cmd(blend,'BlendMode_Add';addy,-10;diffusealpha,0;sleep,0.7;linear,0.2;addy,10;diffusealpha,1);
	};
	-- [Layer22]
	LoadActor("WELCOME")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+44);
		OnCommand=cmd(blend,'BlendMode_Add';addy,-10;diffusealpha,0;sleep,0.8;linear,0.2;addy,10;diffusealpha,1);
	};
	-- [Layer30]
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#ffffff"));
		OnCommand=cmd(linear,0.4;diffusealpha,0);
	};
	-- [Layer31]
	Def.Quad{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtowidth,SCREEN_WIDTH;zoomtoheight,SCREEN_HEIGHT;diffuse,color("#000000"));
		OnCommand=cmd(diffusealpha,0;sleep,2.2;linear,0.4;diffusealpha,1);
	};
};

return t;