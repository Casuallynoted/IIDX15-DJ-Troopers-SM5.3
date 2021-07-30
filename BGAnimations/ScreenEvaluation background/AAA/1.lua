local t = Def.ActorFrame{
	LoadActor("1.png")..{
	InitCommand=cmd(zoom,3;linear,0.3;zoom,1);
	};
	LoadActor("1.png")..{
	InitCommand=cmd(zoom,3;diffusealpha,0.5;sleep,0.03;linear,0.3;zoom,1;linear,0.1;diffusealpha,0);
	};
	LoadActor("1.png")..{
	InitCommand=cmd(zoom,3;diffusealpha,0.5;sleep,0.06;linear,0.3;zoom,1;linear,0.1;diffusealpha,0);
	};
	LoadActor("1.png")..{
	InitCommand=cmd(blend,'BlendMode_Add';zoom,3;linear,0.3;zoom,1;linear,0.1;diffusealpha,0);
	};
};

return t;