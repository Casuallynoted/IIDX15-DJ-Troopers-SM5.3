return Def.ActorFrame{
	LoadActor("ready.png")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
	OnCommand=cmd(addy,-50;diffusealpha,0;decelerate,0.4;addy,50;diffusealpha,1;sleep,1.4;decelerate,0.2;diffusealpha,0);
	};
	LoadActor("ready.png")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,'BlendMode_Add');
	OnCommand=cmd(diffusealpha,0;sleep,1.8;diffusealpha,1;decelerate,0.4;zoomy,1;zoomx,2;diffusealpha,0);
	};
	LoadActor("ready.png")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,'BlendMode_Add');
	OnCommand=cmd(diffusealpha,0;sleep,1.8;diffusealpha,1;decelerate,0.4;zoomy,0.5;zoomx,3;diffusealpha,0);
	};
	LoadActor("ready blend.png")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,'BlendMode_Add');
	OnCommand=cmd(diffusealpha,0;sleep,1.8;diffusealpha,1;decelerate,0.4;zoom,1.5;diffusealpha,0);
	};
}