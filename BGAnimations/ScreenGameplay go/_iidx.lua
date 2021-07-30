return Def.ActorFrame{
	LoadActor("_white.png")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
	OnCommand=cmd(x,97;zoomy,8;diffusealpha,0;linear,0.12;zoomy,.15;diffusealpha,1;sleep,0.1;linear,0.2;zoomx,0.2;diffusealpha,0);
	};
	LoadActor("_ready.png")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,'BlendMode_Add');
	OnCommand=cmd(x,97;zoomy,0.2;diffusealpha,0;sleep,0.1;linear,0.15;zoomy,1.2;diffusealpha,1;linear,0.1;zoomy,1;sleep,0.4;linear,0.4;y,250;diffusealpha,0);
	};
	LoadActor("_rwhite.png")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,'BlendMode_Add');
	OnCommand=cmd(x,97;diffusealpha,0;sleep,0.23;linear,0.01;diffusealpha,1;linear,0.1;diffusealpha,0);
	};
}